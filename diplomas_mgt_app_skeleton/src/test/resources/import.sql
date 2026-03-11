delete from evaluation_board
delete from theses
delete from applications
delete from subjects
delete from students
delete from professors
delete from users

insert into students(username, full_name, am, year_of_studies, average_grade)    values('bob', 'Bob Martin', '1234', 1, 7.5)
insert into students(username, full_name, am, year_of_studies, average_grade)    values('mary', 'Mary Jones', '1235', 2, 8.5)
insert into students(username, full_name, am, year_of_studies, average_grade)    values('willie', 'Willie Smith', '1236', 3, 8.5)
insert into students(username, full_name, am, year_of_studies, average_grade)    values('martin', 'Martin Fowler', '1237', 4, 9.5)
insert into students(username, full_name, am, year_of_studies, average_grade)    values('kent', 'Kent Beck', '1238', 4, 9.7)

insert into professors(username, full_name, specialty) values ('kgeorgiou', 'Kostas Georgiou', 'Software Engineering')
insert into professors(username, full_name, specialty) values ('spappas', 'Stefanos Pappas', 'Data Warehouses')
insert into professors(username, full_name, specialty) values ('christos', 'Christos Papadimitriou', 'Computational Theory')

insert into subjects(id, title, description, available, supervisor_username) values (1, 'Software Engineering', 'Software Engineering course', true, 'kgeorgiou')
insert into subjects(id, title, description, available, supervisor_username) values (2, 'Data warehouses', 'Data warehouses course', true, 'spappas')
insert into subjects(id, title, description, available, supervisor_username) values (3, 'Software Refactoring', 'Software refactoring course', true, 'kgeorgiou')
insert into subjects(id, title, description, available, supervisor_username) values (4, 'Introduction to database', 'Databases course', true, 'spappas')
insert into subjects(id, title, description, available, supervisor_username) values (5, 'Automata and complexity', 'Course in computational theory', true, 'christos')
insert into subjects(id, title, description, available, supervisor_username) values (6, 'Algorithms', 'Intro to algorithms', true, 'christos')

insert into applications(id, student_username, subject_id) values(1, 'bob', 1)
insert into applications(id, student_username, subject_id) values(2, 'bob', 2)
insert into applications(id, student_username, subject_id) values(3, 'bob', 3)
insert into applications(id, student_username, subject_id) values(4, 'mary', 1)
insert into applications(id, student_username, subject_id) values(5, 'mary', 2)
insert into applications(id, student_username, subject_id) values(6, 'mary', 3)
insert into applications(id, student_username, subject_id) values(7, 'willie', 3)
insert into applications(id, student_username, subject_id) values(8, 'willie', 4)
insert into applications(id, student_username, subject_id) values(9, 'willie', 5)
insert into applications(id, student_username, subject_id) values(10, 'willie', 6)
insert into applications(id, student_username, subject_id) values(11, 'martin', 1)
insert into applications(id, student_username, subject_id) values(12, 'martin', 3)
insert into applications(id, student_username, subject_id) values(13, 'kent', 1)
insert into applications(id, student_username, subject_id) values(14, 'kent', 3)

insert into users(username, password, role) values ('kgeorgiou', 'kostas123', 'PROFESSOR')
insert into users(username, password, role) values ('spappas', 'stefanos123', 'PROFESSOR')
insert into users(username, password, role) values ('christos', 'christos123', 'PROFESSOR')

insert into users(username, password, role)    values('bob', 'bob123', 'STUDENT')
insert into users(username, password, role)    values('mary', 'mary123', 'STUDENT')
insert into users(username, password, role)    values('willie', 'willie123', 'STUDENT')
insert into users(username, password, role)    values('martin', 'martin123', 'STUDENT')
insert into users(username, password, role)    values('kent', 'kent123', 'STUDENT')

insert into theses(id, report_grade, presentation_grade, implementation_grade, total_grade, student_id, subject_id, professor_Username) values(1, 10, 10, 10, 10, 'bob', 1, 'kgeorgiou')
insert into theses(id, report_grade, presentation_grade, implementation_grade, total_grade, student_id, subject_id, professor_Username) values(2, 9, 9, 9, 9, 'kent', 3, 'spappas')

insert into evaluation_board(thesis_id, board_member_username) values(1, 'spappas')
insert into evaluation_board(thesis_id, board_member_username) values(1, 'christos')
insert into evaluation_board(thesis_id, board_member_username) values(2, 'kgeorgiou')
insert into evaluation_board(thesis_id, board_member_username) values(2, 'christos')



