CREATE OR REPLACE TRIGGER inactive_student_grade
BEFORE INSERT ON students_courses_grades FOR EACH ROW
DECLARE
    v_is_active CHAR (1);
BEGIN
    SELECT is_active
    INTO v_is_active
    FROM students
    WHERE student_id = :new.student_id;
    IF is_active LIKE 'N' THEN
        raise_application_error(-20001, 'Nie mozna dodac oceny dla studenta ktory ma status "nieaktywny"');
    END IF;
END;
/