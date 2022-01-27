--Nie mozna dodac oceny dla studenta ktory ma status "nieaktywny"
CREATE OR REPLACE TRIGGER inactive_student_grade
BEFORE INSERT ON students_courses_grades FOR EACH ROW
DECLARE
    v_is_active students.is_active%TYPE;
BEGIN
    SELECT is_active
    INTO v_is_active
    FROM students
    WHERE student_id = :new.student_id;
    IF v_is_active = 'N' THEN
        raise_application_error(-20001, 'Nie mozna dodac oceny dla studenta ktory ma status "nieaktywny"');
    END IF;
END;
/

--generowanie krotkich nazw przedmiotow
CREATE OR REPLACE TRIGGER course_shortname
BEFORE INSERT ON courses FOR EACH ROW
BEGIN
    :new.shortname := UPPER(SUBSTR(:new.name, 1, 4) || :new.course_id);
END;
/

--podnies ocene O 1 wszystkim studentom ktorzy nie zdali konkretnego przedmiotu
--CREATE OR REPLACE PROCEDURE pass_every_student(p_course_name IN courses.name%TYPE, p_faculty_name IN faculties.name%TYPE)
--AS
--    v_course_id NUMBER;
--    v_grade_id NUMBER;
--    v_new_grade_id NUMBER;
--BEGIN
--
--    SELECT c.course_id
--    INTO v_course_id
--    FROM courses c JOIN majors_courses mc on (c.course_id = mc.course_id)
--    JOIN majors m on (mc.major_id = m.major_id) JOIN faculties f on (f.faculty_id = m.faculty_id)
--    WHERE c.name = p_course_name AND p_faculty_name = f.name;
--
--    SELECT grade_id
--    INTO v_grade_id
--    FROM grades
--    WHERE grade = 2;
--    
--    SELECT grade_id
--    INTO v_new_grade_id
--    FROM grades
--    WHERE grade = 3;
--    
--    UPDATE students_courses_grades
--    SET grade_id = v_new_grade_id WHERE grade_id = v_grade_id AND course_id = v_course_id;
--    
--    dbms_output.put_line('Podniesiono oceny niezdajacym o 1');
--END;
--/

--oblicz stosunek zdajacych do wszystkich uczestników przedmiotu
CREATE OR REPLACE FUNCTION pass_ratio(p_course_name courses.name%TYPE, p_faculty_name faculties.name%TYPE)
RETURN NUMBER
AS
    v_course_id NUMBER;
    v_pass_ratio NUMBER;
    v_stud_count NUMBER;
BEGIN
    SELECT c.course_id
    INTO v_course_id
    FROM courses c JOIN majors_courses mc on (c.course_id = mc.course_id)
    JOIN majors m on (mc.major_id = m.major_id) JOIN faculties f on (f.faculty_id = m.faculty_id)
    WHERE c.name = p_course_name AND p_faculty_name = f.name;
    
    SELECT COUNT(*)
    INTO v_stud_count
    FROM students_courses_grades
    WHERE course_id = v_course_id;
    
    SELECT COUNT(*)
    INTO v_pass_ratio
    FROM grades g JOIN students_courses_grades scg ON (g.grade_id = scg.grade_id)
    WHERE scg.course_id = v_course_id and g.grade != 2;
    
    v_pass_ratio := v_pass_ratio/v_stud_count;
    RETURN v_pass_ratio;
END;
/

--oblicz stosunek ilosci przedmiotow do studentow na danym wydziale
CREATE OR REPLACE FUNCTION course_student_ratio(p_faculty_name faculties.name%TYPE)
RETURN NUMBER
AS
    v_faculty_id NUMBER;
    v_course_count NUMBER;
    v_stud_count NUMBER;
BEGIN

    SELECT faculty_id
    INTO v_faculty_id
    FROM faculties
    WHERE name = p_faculty_name;
    
    SELECT COUNT(*)
    INTO v_stud_count
    FROM students s JOIN majors m ON (s.major_id = m.major_id)
    JOIN faculties f ON (f.faculty_id = m.faculty_id)
    WHERE f.name = p_faculty_name;
    
    SELECT COUNT(*)
    INTO v_course_count
    FROM courses c JOIN majors_courses mc ON (c.course_id = mc.course_id)
    JOIN majors m ON (mc.major_id = m.major_id) JOIN faculties f ON (m.faculty_id = f.faculty_id)
    WHERE f.faculty_id = v_faculty_id;
    RETURN v_course_count/v_stud_count;
END;

/
--podnies ocene O 1 wszystkim studentom ktorzy nie zdali konkretnego przedmiotu
CREATE OR REPLACE PROCEDURE pass_every_student(p_course_name IN courses.name%TYPE, p_faculty_name IN faculties.name%TYPE)
AS
    v_course_id NUMBER;
    v_grade_id NUMBER;
    v_new_grade_id NUMBER;
BEGIN

    SELECT c.course_id
    INTO v_course_id
    FROM courses c JOIN majors_courses mc on (c.course_id = mc.course_id)
    JOIN majors m on (mc.major_id = m.major_id) JOIN faculties f on (f.faculty_id = m.faculty_id)
    WHERE c.name = p_course_name AND p_faculty_name = f.name;

    SELECT grade_id
    INTO v_grade_id
    FROM grades
    WHERE grade = 2;
    
    SELECT grade_id
    INTO v_new_grade_id
    FROM grades
    WHERE grade = 3;
    
    UPDATE students_courses_grades
    SET grade_id = v_new_grade_id WHERE grade_id = v_grade_id AND course_id = v_course_id;
    
    dbms_output.put_line('Podniesiono oceny niezdajacym o 1');
END;
/

--zmien wykladowcow na danym kierunku tak, aby ci co prowadza 0 lub 1 przedmiot prowadzili wyklady zamiast tych, ktorzy prowadza najwiecej przedmiotow
CREATE OR REPLACE PROCEDURE change_busiest_lecturers
AS
    v_course_id NUMBER;
    v_lecturer_id NUMBER;
    v_busy_lecturer_id NUMBER;
    
    CURSOR lecturer_id_cr IS
        SELECT lecturer_id FROM (
        SELECT l.lecturer_id lecturer_id, 0 cnt FROM lecturers l
        LEFT JOIN courses c ON (c.lecturer_id = l.lecturer_id)
        LEFT JOIN majors_courses mc ON (c.course_id = mc.course_id)
        LEFT JOIN majors m ON (mc.major_id = m.major_id)
        WHERE c.course_id IS NULL
        group by l.lecturer_id
        UNION
        SELECT l.lecturer_id, count(*) cnt FROM lecturers l
        JOIN courses c ON (c.lecturer_id = l.lecturer_id)
        JOIN majors_courses mc ON (c.course_id = mc.course_id)
        JOIN majors m ON (mc.major_id = m.major_id)
        GROUP BY l.lecturer_id HAVING count(*) < 2
        ORDER BY cnt ASC);

    CURSOR busy_lec_id_cr IS
        SELECT l.lecturer_id FROM lecturers l
        JOIN courses c ON (c.lecturer_id = l.lecturer_id)
        JOIN majors_courses mc ON (c.course_id = mc.course_id)
        JOIN majors m ON (mc.major_id = m.major_id)
        group by l.lecturer_id HAVING COUNT(*) > 1
        ORDER BY COUNT(*) DESC;
BEGIN
    OPEN busy_lec_id_cr;
    OPEN lecturer_id_cr;
--    LOOP
--        EXIT WHEN lecturer_id_cr%NOTFOUND;
--        EXIT WHEN busy_lec_id_cr%NOTFOUND;
----        FETCH lecturer_id_cr INTO v_lecturer_id;
----        FETCH lecturer_id_cr INTO v_busy_lecturer_id;
----        SELECT course_id
----        INTO v_course_id
----        FROM courses
----        WHERE lecturer_id = v_busy_lecturer_id FETCH FIRST 1 ROW ONLY;
----        UPDATE courses SET lecturer_id = v_lecturer_id WHERE course_id = v_course_id;
--        dbms_output.put_line('course id: ' || v_course_id || ' lecturer id: ' || v_busy_lecturer_id || ' -> ' || v_lecturer_id);
--    END LOOP;
    CLOSE lecturer_id_cr;
    CLOSE busy_lec_id_cr;
END;
/
