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

--oblicz ile % zdawalnosci konkretnego przedmiotu
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
    
    v_pass_ratio := 100*v_pass_ratio/v_stud_count;
    RETURN v_pass_ratio;
END;
/