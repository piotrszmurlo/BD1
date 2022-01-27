--jaki jest stosunek zdajacych do wszystkich uczestników przedmiotu 'Architektura Krajobrazu' na wydziale Architektury?
select pass_ratio('Architektura Krajobrazu', 'Architektury') from dual; --0.8

--podnies ocene niezdajacym przedmiotu 'Architektura Krajobrazu' na wydziale Architektury
exec pass_every_student('Architektura Krajobrazu', 'Architektury'); 

--wszyscy zdaja:)
select pass_ratio('Architektura Krajobrazu', 'Architektury') from dual; --1

--stosunek ilosci przedmiotow do studentow na wydziale Mechatroniki?
select course_student_ratio('Mechatroniki') from dual;

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

