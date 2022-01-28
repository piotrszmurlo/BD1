--jaki jest stosunek zdajacych do wszystkich uczestników przedmiotu 'Architektura Krajobrazu' na wydziale Architektury?
select pass_ratio('Architektura Krajobrazu', 'Architektury') from dual; --0.667

--podnies ocene niezdajacym przedmiotu 'Architektura Krajobrazu' na wydziale Architektury
exec pass_every_student('Architektura Krajobrazu', 'Architektury'); 

--wszyscy zdaja:)
select pass_ratio('Architektura Krajobrazu', 'Architektury') from dual; --1

--stosunek ilosci przedmiotow do studentow na wydziale Mechatroniki?
select course_student_ratio('Mechatroniki') from dual; --1.5

--wykladowcy z najwieksza liczba godzin
SELECT l.lecturer_id, count(*) FROM lecturers l
JOIN courses c ON (c.lecturer_id = l.lecturer_id)
JOIN majors_courses mc ON (c.course_id = mc.course_id)
JOIN majors m ON (mc.major_id = m.major_id)
group by l.lecturer_id HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC;

--wykladowcy ktorzy prowadza 1 lub 0 godzin przedmiotów
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
ORDER BY cnt ASC;

--wykladowcy ktorzy prowadza 2 i wiecej godzin przedmiotow
SELECT l.lecturer_id , count(*) FROM lecturers l
JOIN courses c ON (c.lecturer_id = l.lecturer_id)
JOIN majors_courses mc ON (c.course_id = mc.course_id)
JOIN majors m ON (mc.major_id = m.major_id)
group by l.lecturer_id HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC;

--odciazanie zapracowanych wykladowcow
exec change_busiest_lecturers;

--test wyzwalacza students_courses_grades
-- proba dodania oceny dla studenta ze statusem "nieaktywny"
INSERT INTO students_courses_grades VALUES (1144, 124, 1024, 3); --wyrzuca blad zdefiniowany w wyzwalaczu
-- proba dodania oceny dla studenta ze statusem "aktywny"
INSERT INTO students_courses_grades VALUES (1174, 129, 1009, 4); --nie wyrzuca bledu

--test wyzwalacza course_shortname
INSERT INTO courses (course_id, name, ects, lecturer_id) VALUES (1234, 'Rusztowania', 4, 108);
SELECT shortname FROM courses WHERE course_id = 1234;

--pokaz nazwy kierunkow, ich wydzialow i liczbe studentow
SELECT m.name kierunek, f.name wydzial, count(*) liczba_studentow
FROM students s JOIN majors m ON (m.major_id = s.major_id)
JOIN faculties f ON (m.faculty_id = f.faculty_id)
GROUP BY m.name, f.name ORDER BY liczba_studentow DESC;