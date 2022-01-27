INSERT INTO grades VALUES (2, 2, 'dopuszczajacy');
INSERT INTO grades VALUES (3, 3, 'dostateczny');
INSERT INTO grades VALUES (4, 4, 'dobry');
INSERT INTO grades VALUES (5, 5, 'bardzo dobry');

commit;


-------------------


INSERT INTO faculties VALUES (101, 'Elektroniki i Technik Informacyjnych');
INSERT INTO faculties VALUES (102, 'Elektryczny');
INSERT INTO faculties VALUES (103, 'Architektury');
INSERT INTO faculties VALUES (104, 'Matematyki i Nauk Informacyjnych');
INSERT INTO faculties VALUES (105, 'Mechatroniki');



commit;

----------------

INSERT INTO lecturers VALUES (100, 'Natalia', 'Kowalska');
INSERT INTO lecturers VALUES (101, 'Piotr', 'Tatejski');
INSERT INTO lecturers VALUES (102, 'Tomasz', 'Malinowski');
INSERT INTO lecturers VALUES (103, 'Grzegorz', 'Gruszewski');
INSERT INTO lecturers VALUES (104, 'Mateusz', 'Lew');
INSERT INTO lecturers VALUES (105, 'Olga', 'Rozwadowska');
INSERT INTO lecturers VALUES (106, 'Cecylia', '�ukanowska');
INSERT INTO lecturers VALUES (107, 'Kinga', 'Halas');
INSERT INTO lecturers VALUES (108, 'Filemon', 'Jerzyk');
INSERT INTO lecturers VALUES (109, 'Filemon', 'Jerzyk');
INSERT INTO lecturers VALUES (110, 'Oliwia', 'Szatkowska');
INSERT INTO lecturers VALUES (111, 'Marcin', 'Marzec');
INSERT INTO lecturers VALUES (112, 'Adam', 'Kotowski');
INSERT INTO lecturers VALUES (113, 'Antoni', 'Ruskiewski');
INSERT INTO lecturers VALUES (114, 'Remigiusz', 'Wierzgo�');
INSERT INTO lecturers VALUES (115, '�ucja', 'Myszkiewicz');
INSERT INTO lecturers VALUES (116, 'Adam', 'Kozak');
INSERT INTO lecturers VALUES (117, 'Adam', 'Jerzyk');

commit;

-- ogolne
INSERT INTO courses (course_id, name, ects, lecturer_id) VALUES (1001, 'Analiza i r�wnania r�niczkowe 1', 6, 115);
INSERT INTO courses (course_id, name, ects, lecturer_id) VALUES (1002, 'Analiza i r�wnania r�niczkowe 2', 4, 115);
INSERT INTO courses (course_id, name, ects, lecturer_id) VALUES (1003, 'Metody probabilistyczne i statystyka', 5, 100);

-- infa
INSERT INTO courses (course_id, name, ects, lecturer_id) VALUES (1004, 'Architektura komputer�w', 4, 100);
INSERT INTO courses (course_id, name, ects, lecturer_id) VALUES (1005, 'Bazy danych 1', 4, 107);
INSERT INTO courses (course_id, name, ects, lecturer_id) VALUES (1006, 'Bazy danych 2', 4, 106);

-- mechatro bio-inz
INSERT INTO courses (course_id, name, ects, lecturer_id) VALUES (1007, 'Biomateria�y', 4, 112);
INSERT INTO courses (course_id, name, ects, lecturer_id) VALUES (1008, 'Radiologia', 4, 113);
INSERT INTO courses (course_id, name, ects, lecturer_id) VALUES (1009, 'Materia�oznawstwo', 3, 114);

-- air
INSERT INTO courses (course_id, name, ects, lecturer_id) VALUES (1010, 'Sterowanie i symulacja robot�w', 4, 103);
INSERT INTO courses (course_id, name, ects, lecturer_id) VALUES (1011, 'Projektowanie uklad�w sterowania', 3, 114);
INSERT INTO courses (course_id, name, ects, lecturer_id) VALUES (1012, 'Systemy mikroprocesorowe w sterowaniu', 4, 115);

-- infa stosowana
INSERT INTO courses (course_id, name, ects, lecturer_id) VALUES (1013, 'Ochrona danych w systemach informatycznych', 3, 106);
INSERT INTO courses (course_id, name, ects, lecturer_id) VALUES (1014, 'Systemy telekomunikacyjne', 3, 107);
INSERT INTO courses (course_id, name, ects, lecturer_id) VALUES (1015, 'Grafika komputerowa', 5, 108);

-- elektrotechnika
INSERT INTO courses (course_id, name, ects, lecturer_id) VALUES (1016, 'Podstawy elektroniki', 3, 109);
INSERT INTO courses (course_id, name, ects, lecturer_id) VALUES (1017, 'Teoria obwod�w 1', 4, 110);
INSERT INTO courses (course_id, name, ects, lecturer_id) VALUES (1018, 'Teoria obwod�w 2', 4, 111);

-- matematyka
INSERT INTO courses (course_id, name, ects, lecturer_id) VALUES (1019, 'Pakiety matematyczne', 3, 112);
INSERT INTO courses (course_id, name, ects, lecturer_id) VALUES (1020, 'Analiza funkcjonalna', 5, 113);
INSERT INTO courses (course_id, name, ects, lecturer_id) VALUES (1021, 'Modelowanie matematyczne', 4, 115);

-- inz i anal dan
INSERT INTO courses (course_id, name, ects, lecturer_id) VALUES (1022, 'Elementy logiki i teorii mnogo�ci', 4, 114);
INSERT INTO courses (course_id, name, ects, lecturer_id) VALUES (1023, 'Techniki wizualizacji danych', 4, 101);
INSERT INTO courses (course_id, name, ects, lecturer_id) VALUES (1024, 'Metody optymalizacji', 4, 115);

-- mechatro
INSERT INTO courses (course_id, name, ects, lecturer_id) VALUES (1025, 'Podstawy Technik Wytwarzania', 3, 103);
INSERT INTO courses (course_id, name, ects, lecturer_id) VALUES (1026, 'Miernictwo elektryczne', 4, 104);
INSERT INTO courses (course_id, name, ects, lecturer_id) VALUES (1027, 'Podstawy konstrukcji urz�dze� precyzyjnych', 5, 105);

--arch
INSERT INTO courses (course_id, name, ects, lecturer_id) VALUES (1028, 'Architektura Krajobrazu', 4, 106);
INSERT INTO courses (course_id, name, ects, lecturer_id) VALUES (1029, 'Kszta�towanie detalu budowlanego', 3, 107);
INSERT INTO courses (course_id, name, ects, lecturer_id) VALUES (1030, 'Teoria urbanistyki', 4, 108);
INSERT INTO courses (course_id, name, ects, lecturer_id) VALUES (1031, 'Teoria i praktyka projektowania', 5, 110);

commit;
------------------

INSERT INTO majors VALUES (101, 'Automatyka i Robotyka', 101);
INSERT INTO majors VALUES (102, 'Informatyka', 101);
-- ee
INSERT INTO majors VALUES (103, 'Informatyka Stosowana,', 102);
INSERT INTO majors VALUES (104, 'Elektrotechnika', 102);
-- mini
INSERT INTO majors VALUES (105, 'Matematyka', 104);
INSERT INTO majors VALUES (106, 'In�ynieria i Analiza Danych', 104);
-- mchtr
INSERT INTO majors VALUES (107, 'Mechatronika', 105);
INSERT INTO majors VALUES (108, 'In�ynieria Biomedyczna', 105);
-- arch
INSERT INTO majors VALUES (109, 'Architektura', 103);


commit;

---------------------------

-- air, eiti
INSERT INTO students VALUES (101, 'Piotr', 'Maciejewski', '00272819101', 101, 'Y');
INSERT INTO students VALUES (102, 'Piotr', 'Janowski', '00112219101', 101, 'Y');
INSERT INTO students VALUES (103, 'Andrzej', 'King', '00112219102',101, 'Y');
INSERT INTO students VALUES (104, 'Bartosz', 'Pawlak', '98082219180',101, 'N');

-- infa, eiti
INSERT INTO students VALUES (105, 'Tracy', 'Hunold', '00112219105', 102, 'Y');
INSERT INTO students VALUES (106, 'David', 'Ernst', '00112219106', 102, 'Y');
INSERT INTO students VALUES (107, 'Nancy', 'Lorentz', '00112219109',102, 'Y');
INSERT INTO students VALUES (108, '�?ukasz', 'Budka', '98082219180',102, 'N');

-- infa stosowana, ee
INSERT INTO students VALUES (109, 'Ismael', 'Chen', '01112219110', 103, 'Y');
INSERT INTO students VALUES (110, 'Jose Manuel', 'Sciarra', '01112219111', 103, 'Y');
INSERT INTO students VALUES (111, 'Luis', 'Urman', '01112219112',103, 'Y');
INSERT INTO students VALUES (112, 'Luis', 'Popp', '01112219113', 103, 'Y');

-- elektrotechnika, ee
INSERT INTO students VALUES (113, 'Sigal', 'Tobias', '01112219117', 104, 'Y');
INSERT INTO students VALUES (114, 'Guy', 'Himuro', '01112219118', 104, 'Y');
INSERT INTO students VALUES (115, 'Jadwiga', 'Nowacka', '98082219180', 104, 'N');
INSERT INTO students VALUES (116, 'Beata', 'Mucha', '98082219180', 104, 'N');

-- matma, mini
INSERT INTO students VALUES (117, 'Jason', 'Landry', '02082219100', 105, 'Y');
INSERT INTO students VALUES (118, 'Michael', 'Markle', '02082219101', 105, 'Y');
INSERT INTO students VALUES (119, 'Mateusz', 'Mikke', '98082219180', 105, 'N');
INSERT INTO students VALUES (120, 'Adam', 'Bosak', '98082219180', 105, 'N');

-- inz i ana danych, mini
INSERT INTO students VALUES (121, 'Stephen', 'Atkinson', '02282219102', 106, 'Y');
INSERT INTO students VALUES (122, 'John', 'Marlow', '02282219103', 106, 'Y');
INSERT INTO students VALUES (123, 'Randall', 'Rogers', '02282219160', 106, 'Y');
INSERT INTO students VALUES (124, 'James', 'Mikkilineni', '99052219109',106, 'N');

-- mechatro, mechatro
INSERT INTO students VALUES (125, 'Ludwik', 'Wiśniewski', '022417161000',107, 'Y');
INSERT INTO students VALUES (126, 'Teofil', 'Hemingway', '022417161001', 107, 'Y');
INSERT INTO students VALUES (127, 'Ludmiła', 'Stachurska', '022417161002', 107, 'Y');
INSERT INTO students VALUES (128, 'Steven', 'Janowski', '99052219107',107, 'N');

-- inzbio, mechatro
INSERT INTO students VALUES (129, 'Ziemowit', 'Szpak', '022417161003', 108, 'Y');
INSERT INTO students VALUES (130, 'Konstanty', 'Cugowski', '022417161004', 108, 'Y');
INSERT INTO students VALUES (131, 'Julia', 'Vollman', '99052219104', 108, 'N');
INSERT INTO students VALUES (132, 'Irene', 'Janowski', '99052219105', 108, 'N');

-- arch
INSERT INTO students VALUES (133, 'Renske', 'Atkinson', '02282219101', 109, 'Y');
INSERT INTO students VALUES (134, 'Alex', 'Khoo', '01112219115', 109, 'Y');
INSERT INTO students VALUES (135, 'Daniel', 'Greenberg', '00112219110',109, 'Y');
INSERT INTO students VALUES (136, 'Adam', 'Fripp', '99052219102', 109, 'N');
INSERT INTO students VALUES (137, 'Kevin', 'Kaufling', '99052219103', 109, 'N');

commit;

--------------------


-- air, eiti

INSERT INTO students_courses_grades VALUES (1001, 101, 1001, 3);
INSERT INTO students_courses_grades VALUES (1002, 101, 1002, 4);
INSERT INTO students_courses_grades VALUES (1003, 101, 1003, 3);
INSERT INTO students_courses_grades VALUES (1004, 101, 1010, 5);
INSERT INTO students_courses_grades VALUES (1005, 101, 1011, 4);
INSERT INTO students_courses_grades VALUES (1006, 101, 1012, 4);

INSERT INTO students_courses_grades VALUES (1007, 102, 1001, 2);
INSERT INTO students_courses_grades VALUES (1008, 102, 1002, 4);
INSERT INTO students_courses_grades VALUES (1009, 102, 1003, 3);
INSERT INTO students_courses_grades VALUES (1010, 102, 1010, 3);
INSERT INTO students_courses_grades VALUES (1011, 102, 1011, 3);
INSERT INTO students_courses_grades VALUES (1012, 102, 1012, 3);

INSERT INTO students_courses_grades VALUES (1013, 103, 1001, 2);
INSERT INTO students_courses_grades VALUES (1014, 103, 1002, 3);
INSERT INTO students_courses_grades VALUES (1015, 103, 1003, 2);
INSERT INTO students_courses_grades VALUES (1016, 103, 1010, 3);
INSERT INTO students_courses_grades VALUES (1017, 103, 1011, 4);
INSERT INTO students_courses_grades VALUES (1018, 103, 1012, 3);

INSERT INTO students_courses_grades VALUES (1019, 104, 1001, 4);
INSERT INTO students_courses_grades VALUES (1020, 104, 1002, 3);
INSERT INTO students_courses_grades VALUES (1021, 104, 1003, 3);
INSERT INTO students_courses_grades VALUES (1022, 104, 1010, 2);
INSERT INTO students_courses_grades VALUES (1023, 104, 1011, 3);
INSERT INTO students_courses_grades VALUES (1024, 104, 1012, 3);


-- infa, eiti

INSERT INTO students_courses_grades VALUES (1025, 105, 1001, 4);
INSERT INTO students_courses_grades VALUES (1026, 105, 1002, 4);
INSERT INTO students_courses_grades VALUES (1027, 105, 1003, 3);
INSERT INTO students_courses_grades VALUES (1028, 105, 1004, 4);
INSERT INTO students_courses_grades VALUES (1029, 105, 1005, 4);
INSERT INTO students_courses_grades VALUES (1030, 105, 1006, 4);

INSERT INTO students_courses_grades VALUES (1031, 106, 1001, 5);
INSERT INTO students_courses_grades VALUES (1032, 106, 1002, 3);
INSERT INTO students_courses_grades VALUES (1033, 106, 1003, 4);
INSERT INTO students_courses_grades VALUES (1034, 106, 1004, 4);
INSERT INTO students_courses_grades VALUES (1035, 106, 1005, 3);
INSERT INTO students_courses_grades VALUES (1036, 106, 1006, 3);

INSERT INTO students_courses_grades VALUES (1037, 107, 1001, 5);
INSERT INTO students_courses_grades VALUES (1038, 107, 1002, 5);
INSERT INTO students_courses_grades VALUES (1039, 107, 1003, 4);
INSERT INTO students_courses_grades VALUES (1040, 107, 1004, 5);
INSERT INTO students_courses_grades VALUES (1041, 107, 1005, 5);
INSERT INTO students_courses_grades VALUES (1042, 107, 1006, 4);

INSERT INTO students_courses_grades VALUES (1043, 108, 1001, 4);
INSERT INTO students_courses_grades VALUES (1044, 108, 1002, 3);
INSERT INTO students_courses_grades VALUES (1045, 108, 1003, 3);
INSERT INTO students_courses_grades VALUES (1046, 108, 1004, 4);
INSERT INTO students_courses_grades VALUES (1047, 108, 1005, 3);
INSERT INTO students_courses_grades VALUES (1048, 108, 1006, 3);


-- infa stosowana, ee

INSERT INTO students_courses_grades VALUES (1049, 109, 1001, 4);
INSERT INTO students_courses_grades VALUES (1050, 109, 1002, 4);
INSERT INTO students_courses_grades VALUES (1051, 109, 1003, 4);
INSERT INTO students_courses_grades VALUES (1052, 109, 1013, 4);
INSERT INTO students_courses_grades VALUES (1053, 109, 1014, 4);
INSERT INTO students_courses_grades VALUES (1054, 109, 1015, 4);

INSERT INTO students_courses_grades VALUES (1055, 110, 1001, 3);
INSERT INTO students_courses_grades VALUES (1056, 110, 1002, 3);
INSERT INTO students_courses_grades VALUES (1057, 110, 1003, 3);
INSERT INTO students_courses_grades VALUES (1058, 110, 1013, 3);
INSERT INTO students_courses_grades VALUES (1059, 110, 1014, 3);
INSERT INTO students_courses_grades VALUES (1060, 110, 1015, 3);

INSERT INTO students_courses_grades VALUES (1061, 111, 1001, 3);
INSERT INTO students_courses_grades VALUES (1062, 111, 1002, 4);
INSERT INTO students_courses_grades VALUES (1063, 111, 1003, 3);
INSERT INTO students_courses_grades VALUES (1064, 111, 1013, 5);
INSERT INTO students_courses_grades VALUES (1065, 111, 1014, 4);
INSERT INTO students_courses_grades VALUES (1066, 111, 1015, 3);

INSERT INTO students_courses_grades VALUES (1067, 112, 1001, 3);
INSERT INTO students_courses_grades VALUES (1068, 112, 1002, 5);
INSERT INTO students_courses_grades VALUES (1069, 112, 1003, 4);
INSERT INTO students_courses_grades VALUES (1070, 112, 1013, 4);
INSERT INTO students_courses_grades VALUES (1071, 112, 1014, 4);
INSERT INTO students_courses_grades VALUES (1072, 112, 1015, 3);


-- elektrotechnika, ee

INSERT INTO students_courses_grades VALUES (1073, 113, 1001, 4);
INSERT INTO students_courses_grades VALUES (1074, 113, 1002, 5);
INSERT INTO students_courses_grades VALUES (1075, 113, 1003, 2);
INSERT INTO students_courses_grades VALUES (1076, 113, 1016, 3);
INSERT INTO students_courses_grades VALUES (1077, 113, 1017, 4);
INSERT INTO students_courses_grades VALUES (1078, 113, 1018, 3);

INSERT INTO students_courses_grades VALUES (1079, 114, 1001, 4);
INSERT INTO students_courses_grades VALUES (1080, 114, 1002, 3);
INSERT INTO students_courses_grades VALUES (1081, 114, 1003, 2);
INSERT INTO students_courses_grades VALUES (1082, 114, 1016, 5);
INSERT INTO students_courses_grades VALUES (1083, 114, 1017, 3);
INSERT INTO students_courses_grades VALUES (1084, 114, 1018, 3);

INSERT INTO students_courses_grades VALUES (1085, 115, 1001, 4);
INSERT INTO students_courses_grades VALUES (1086, 115, 1002, 2);
INSERT INTO students_courses_grades VALUES (1087, 115, 1003, 3);
INSERT INTO students_courses_grades VALUES (1088, 115, 1016, 4);
INSERT INTO students_courses_grades VALUES (1089, 115, 1017, 5);
INSERT INTO students_courses_grades VALUES (1090, 115, 1018, 3);

INSERT INTO students_courses_grades VALUES (1091, 116, 1001, 3);
INSERT INTO students_courses_grades VALUES (1092, 116, 1002, 2);
INSERT INTO students_courses_grades VALUES (1093, 116, 1003, 2);
INSERT INTO students_courses_grades VALUES (1094, 116, 1016, 3);
INSERT INTO students_courses_grades VALUES (1095, 116, 1017, 3);
INSERT INTO students_courses_grades VALUES (1096, 116, 1018, 3);


-- matma, mini

INSERT INTO students_courses_grades VALUES (1097, 117, 1001, 4);
INSERT INTO students_courses_grades VALUES (1098, 117, 1002, 4);
INSERT INTO students_courses_grades VALUES (1099, 117, 1003, 4);
INSERT INTO students_courses_grades VALUES (1100, 117, 1019, 5);
INSERT INTO students_courses_grades VALUES (1101, 117, 1020, 3);
INSERT INTO students_courses_grades VALUES (1102, 117, 1021, 4);

INSERT INTO students_courses_grades VALUES (1103, 118, 1001, 5);
INSERT INTO students_courses_grades VALUES (1104, 118, 1002, 5);
INSERT INTO students_courses_grades VALUES (1105, 118, 1003, 5);
INSERT INTO students_courses_grades VALUES (1106, 118, 1019, 4);
INSERT INTO students_courses_grades VALUES (1107, 118, 1020, 4);
INSERT INTO students_courses_grades VALUES (1108, 118, 1021, 4);

INSERT INTO students_courses_grades VALUES (1109, 119, 1001, 4);
INSERT INTO students_courses_grades VALUES (1110, 119, 1002, 4);
INSERT INTO students_courses_grades VALUES (1111, 119, 1003, 4);
INSERT INTO students_courses_grades VALUES (1112, 119, 1019, 3);
INSERT INTO students_courses_grades VALUES (1113, 119, 1020, 3);
INSERT INTO students_courses_grades VALUES (1114, 119, 1021, 4);

INSERT INTO students_courses_grades VALUES (1115, 120, 1001, 4);
INSERT INTO students_courses_grades VALUES (1116, 120, 1002, 4);
INSERT INTO students_courses_grades VALUES (1117, 120, 1003, 5);
INSERT INTO students_courses_grades VALUES (1118, 120, 1019, 4);
INSERT INTO students_courses_grades VALUES (1119, 120, 1020, 3);
INSERT INTO students_courses_grades VALUES (1120, 120, 1021, 3);


-- inz i ana danych, mini

INSERT INTO students_courses_grades VALUES (1121, 121, 1001, 4);
INSERT INTO students_courses_grades VALUES (1122, 121, 1002, 4);
INSERT INTO students_courses_grades VALUES (1123, 121, 1003, 5);
INSERT INTO students_courses_grades VALUES (1124, 121, 1022, 4);
INSERT INTO students_courses_grades VALUES (1125, 121, 1023, 3);
INSERT INTO students_courses_grades VALUES (1126, 121, 1024, 3);

INSERT INTO students_courses_grades VALUES (1127, 122, 1001, 4);
INSERT INTO students_courses_grades VALUES (1128, 122, 1002, 4);
INSERT INTO students_courses_grades VALUES (1129, 122, 1003, 4);
INSERT INTO students_courses_grades VALUES (1130, 122, 1022, 4);
INSERT INTO students_courses_grades VALUES (1131, 122, 1023, 2);
INSERT INTO students_courses_grades VALUES (1132, 122, 1024, 3);

INSERT INTO students_courses_grades VALUES (1133, 123, 1001, 4);
INSERT INTO students_courses_grades VALUES (1134, 123, 1002, 4);
INSERT INTO students_courses_grades VALUES (1135, 123, 1003, 4);
INSERT INTO students_courses_grades VALUES (1136, 123, 1022, 4);
INSERT INTO students_courses_grades VALUES (1137, 123, 1023, 2);
INSERT INTO students_courses_grades VALUES (1138, 123, 1024, 3); 

INSERT INTO students_courses_grades VALUES (1139, 124, 1001, 5);
INSERT INTO students_courses_grades VALUES (1140, 124, 1002, 5);
INSERT INTO students_courses_grades VALUES (1141, 124, 1003, 4);
INSERT INTO students_courses_grades VALUES (1142, 124, 1022, 4);
INSERT INTO students_courses_grades VALUES (1143, 124, 1023, 3); 


-- mechatro, mechatro

INSERT INTO students_courses_grades VALUES (1145, 125, 1001, 4);
INSERT INTO students_courses_grades VALUES (1146, 125, 1002, 4);
INSERT INTO students_courses_grades VALUES (1147, 125, 1003, 4);
INSERT INTO students_courses_grades VALUES (1148, 125, 1025, 4);
INSERT INTO students_courses_grades VALUES (1149, 125, 1026, 5);
INSERT INTO students_courses_grades VALUES (1150, 125, 1027, 3); 

INSERT INTO students_courses_grades VALUES (1151, 126, 1001, 5);
INSERT INTO students_courses_grades VALUES (1152, 126, 1002, 4);
INSERT INTO students_courses_grades VALUES (1153, 126, 1003, 4);
INSERT INTO students_courses_grades VALUES (1154, 126, 1025, 4);
INSERT INTO students_courses_grades VALUES (1155, 126, 1026, 3);
INSERT INTO students_courses_grades VALUES (1156, 126, 1027, 2);

INSERT INTO students_courses_grades VALUES (1157, 127, 1001, 4);
INSERT INTO students_courses_grades VALUES (1158, 127, 1002, 4);
INSERT INTO students_courses_grades VALUES (1159, 127, 1003, 4);
INSERT INTO students_courses_grades VALUES (1160, 127, 1025, 4);
INSERT INTO students_courses_grades VALUES (1161, 127, 1026, 3);
INSERT INTO students_courses_grades VALUES (1162, 127, 1027, 4); 

INSERT INTO students_courses_grades VALUES (1163, 128, 1001, 4);
INSERT INTO students_courses_grades VALUES (1164, 128, 1002, 3);
INSERT INTO students_courses_grades VALUES (1165, 128, 1003, 4);
INSERT INTO students_courses_grades VALUES (1166, 128, 1025, 3);
INSERT INTO students_courses_grades VALUES (1167, 128, 1026, 3);
INSERT INTO students_courses_grades VALUES (1168, 128, 1027, 4);


-- inzbio, mechatro

INSERT INTO students_courses_grades VALUES (1169, 129, 1001, 4);
INSERT INTO students_courses_grades VALUES (1170, 129, 1002, 3);
INSERT INTO students_courses_grades VALUES (1171, 129, 1003, 4);
INSERT INTO students_courses_grades VALUES (1172, 129, 1007, 3);
INSERT INTO students_courses_grades VALUES (1173, 129, 1008, 3);

INSERT INTO students_courses_grades VALUES (1175, 130, 1001, 5);
INSERT INTO students_courses_grades VALUES (1176, 130, 1002, 4);
INSERT INTO students_courses_grades VALUES (1177, 130, 1003, 4);
INSERT INTO students_courses_grades VALUES (1178, 130, 1007, 5);
INSERT INTO students_courses_grades VALUES (1179, 130, 1008, 3);
INSERT INTO students_courses_grades VALUES (1180, 130, 1009, 4);

INSERT INTO students_courses_grades VALUES (1181, 131, 1001, 3);
INSERT INTO students_courses_grades VALUES (1182, 131, 1002, 3);
INSERT INTO students_courses_grades VALUES (1183, 131, 1003, 3);
INSERT INTO students_courses_grades VALUES (1184, 131, 1007, 2);
INSERT INTO students_courses_grades VALUES (1185, 131, 1008, 3);
INSERT INTO students_courses_grades VALUES (1186, 131, 1009, 3);

INSERT INTO students_courses_grades VALUES (1187, 132, 1001, 4);
INSERT INTO students_courses_grades VALUES (1188, 132, 1002, 3);
INSERT INTO students_courses_grades VALUES (1189, 132, 1003, 5);
INSERT INTO students_courses_grades VALUES (1190, 132, 1007, 4);
INSERT INTO students_courses_grades VALUES (1191, 132, 1008, 3);
INSERT INTO students_courses_grades VALUES (1192, 132, 1009, 4);


-- arch

INSERT INTO students_courses_grades VALUES (1193, 133, 1001, 4);
INSERT INTO students_courses_grades VALUES (1194, 133, 1002, 4);
INSERT INTO students_courses_grades VALUES (1195, 133, 1003, 5);
INSERT INTO students_courses_grades VALUES (1196, 133, 1028, 4);
INSERT INTO students_courses_grades VALUES (1197, 133, 1029, 4);
INSERT INTO students_courses_grades VALUES (1198, 133, 1030, 2);

INSERT INTO students_courses_grades VALUES (1199, 134, 1001, 3);
INSERT INTO students_courses_grades VALUES (1200, 134, 1002, 4);
INSERT INTO students_courses_grades VALUES (1201, 134, 1003, 3);
INSERT INTO students_courses_grades VALUES (1202, 134, 1028, 3);
INSERT INTO students_courses_grades VALUES (1203, 134, 1029, 4);
INSERT INTO students_courses_grades VALUES (1204, 134, 1030, 2);

INSERT INTO students_courses_grades VALUES (1205, 135, 1001, 4);
INSERT INTO students_courses_grades VALUES (1206, 135, 1002, 4);
INSERT INTO students_courses_grades VALUES (1207, 135, 1003, 3);
INSERT INTO students_courses_grades VALUES (1208, 135, 1028, 3);
INSERT INTO students_courses_grades VALUES (1209, 135, 1029, 4);
INSERT INTO students_courses_grades VALUES (1210, 135, 1030, 3);

INSERT INTO students_courses_grades VALUES (1211, 136, 1001, 4);
INSERT INTO students_courses_grades VALUES (1212, 136, 1002, 5);
INSERT INTO students_courses_grades VALUES (1213, 136, 1003, 3);
INSERT INTO students_courses_grades VALUES (1214, 136, 1028, 5);
INSERT INTO students_courses_grades VALUES (1215, 136, 1029, 3);
INSERT INTO students_courses_grades VALUES (1216, 136, 1030, 3);

INSERT INTO students_courses_grades VALUES (1217, 137, 1001, 3);
INSERT INTO students_courses_grades VALUES (1218, 137, 1002, 3);
INSERT INTO students_courses_grades VALUES (1219, 137, 1003, 4);
INSERT INTO students_courses_grades VALUES (1220, 137, 1028, 2);
INSERT INTO students_courses_grades VALUES (1221, 137, 1029, 3);
INSERT INTO students_courses_grades VALUES (1222, 137, 1030, 3);

commit;

-- air
INSERT INTO majors_courses VALUES (101, 101, 1001);
INSERT INTO majors_courses VALUES (102, 101, 1002);
INSERT INTO majors_courses VALUES (103, 101, 1003);
INSERT INTO majors_courses VALUES (104, 101, 1010);
INSERT INTO majors_courses VALUES (105, 101, 1011);
INSERT INTO majors_courses VALUES (106, 101, 1012);

-- infa
INSERT INTO majors_courses VALUES (107, 102, 1001);
INSERT INTO majors_courses VALUES (108, 102, 1002);
INSERT INTO majors_courses VALUES (109, 102, 1003);
INSERT INTO majors_courses VALUES (110, 102, 1004);
INSERT INTO majors_courses VALUES (111, 102, 1005);
INSERT INTO majors_courses VALUES (112, 102, 1006);

-- infa stosowana
INSERT INTO majors_courses VALUES (113, 103, 1001);
INSERT INTO majors_courses VALUES (114, 103, 1002);
INSERT INTO majors_courses VALUES (115, 103, 1003);
INSERT INTO majors_courses VALUES (116, 103, 1013);
INSERT INTO majors_courses VALUES (117, 103, 1014);
INSERT INTO majors_courses VALUES (118, 103, 1015);

-- elektrotechnika
INSERT INTO majors_courses VALUES (119, 104, 1001);
INSERT INTO majors_courses VALUES (120, 104, 1002);
INSERT INTO majors_courses VALUES (121, 104, 1003);
INSERT INTO majors_courses VALUES (122, 104, 1016);
INSERT INTO majors_courses VALUES (123, 104, 1017);
INSERT INTO majors_courses VALUES (124, 104, 1018);

-- matematyka
INSERT INTO majors_courses VALUES (125, 105, 1001);
INSERT INTO majors_courses VALUES (126, 105, 1002);
INSERT INTO majors_courses VALUES (127, 105, 1003);
INSERT INTO majors_courses VALUES (128, 105, 1019);
INSERT INTO majors_courses VALUES (129, 105, 1020);
INSERT INTO majors_courses VALUES (130, 105, 1021);

-- matematyka
INSERT INTO majors_courses VALUES (131, 106, 1001);
INSERT INTO majors_courses VALUES (132, 106, 1002);
INSERT INTO majors_courses VALUES (133, 106, 1003);
INSERT INTO majors_courses VALUES (134, 106, 1022);
INSERT INTO majors_courses VALUES (135, 106, 1023);
INSERT INTO majors_courses VALUES (136, 106, 1024);

-- mechatro
INSERT INTO majors_courses VALUES (137, 107, 1001);
INSERT INTO majors_courses VALUES (138, 107, 1002);
INSERT INTO majors_courses VALUES (139, 107, 1003);
INSERT INTO majors_courses VALUES (140, 107, 1025);
INSERT INTO majors_courses VALUES (141, 107, 1026);
INSERT INTO majors_courses VALUES (142, 107, 1027);

-- inz-bio
INSERT INTO majors_courses VALUES (143, 108, 1001);
INSERT INTO majors_courses VALUES (144, 108, 1002);
INSERT INTO majors_courses VALUES (145, 108, 1003);
INSERT INTO majors_courses VALUES (146, 108, 1007);
INSERT INTO majors_courses VALUES (147, 108, 1008);
INSERT INTO majors_courses VALUES (148, 108, 1009);

--arch
INSERT INTO majors_courses VALUES (149, 109, 1001);
INSERT INTO majors_courses VALUES (150, 109, 1002);
INSERT INTO majors_courses VALUES (151, 109, 1003);
INSERT INTO majors_courses VALUES (152, 109, 1028);
INSERT INTO majors_courses VALUES (153, 109, 1029);
INSERT INTO majors_courses VALUES (154, 109, 1030);
INSERT INTO majors_courses VALUES (155, 109, 1031);

commit;