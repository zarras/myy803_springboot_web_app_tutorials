delete from evaluation_board
delete from theses
delete from applications
delete from subjects
delete from students
delete from professors
delete from users

ALTER TABLE applications ALTER COLUMN id RESTART WITH 1
ALTER TABLE subjects ALTER COLUMN id RESTART WITH 1
ALTER TABLE theses ALTER COLUMN id RESTART WITH 1

insert into students(username, full_name, am, year_of_studies, average_grade)    values('bob', 'Bob Martin', '1234', 1, 7.5)
insert into students(username, full_name, am, year_of_studies, average_grade)    values('mary', 'Mary Jones', '1235', 2, 8.5)
insert into students(username, full_name, am, year_of_studies, average_grade)    values('willie', 'Willie Smith', '1236', 3, 8.5)
insert into students(username, full_name, am, year_of_studies, average_grade)    values('martin', 'Martin Fowler', '1237', 4, 9.5)
insert into students(username, full_name, am, year_of_studies, average_grade)    values('kent', 'Kent Beck', '1238', 4, 9.7)

insert into professors(username, full_name, specialty) values ('kgeorgiou', 'Kostas Georgiou', 'Software Engineering')
insert into professors(username, full_name, specialty) values ('spappas', 'Stefanos Pappas', 'Data Warehouses')
insert into professors(username, full_name, specialty) values ('christos', 'Christos Papadimitriou', 'Computational Theory')

insert into subjects(title, description, available, supervisor_username) values ('Software Engineering', 'Software Engineering course', true, 'kgeorgiou')
insert into subjects(title, description, available, supervisor_username) values ('Data warehouses', 'Data warehouses course', true, 'spappas')
insert into subjects(title, description, available, supervisor_username) values ('Software Refactoring', 'Software refactoring course', true, 'kgeorgiou')
insert into subjects(title, description, available, supervisor_username) values ('Introduction to database', 'Databases course', false, 'spappas')
insert into subjects(title, description, available, supervisor_username) values ('Automata and complexity', 'Course in computational theory', true, 'christos')
insert into subjects(title, description, available, supervisor_username) values ('Algorithms', 'Intro to algorithms', true, 'christos')

insert into applications(student_username, subject_id) values( 'bob', 1)
insert into applications(student_username, subject_id) values( 'bob', 2)
insert into applications(student_username, subject_id) values( 'bob', 3)
insert into applications(student_username, subject_id) values( 'mary', 1)
insert into applications(student_username, subject_id) values( 'mary', 2)
insert into applications(student_username, subject_id) values( 'mary', 3)
insert into applications(student_username, subject_id) values( 'willie', 2)
insert into applications(student_username, subject_id) values( 'willie', 3)
insert into applications(student_username, subject_id) values( 'willie', 5)
insert into applications(student_username, subject_id) values( 'willie', 6)
insert into applications(student_username, subject_id) values( 'martin', 1)
insert into applications(student_username, subject_id) values('martin', 3)
insert into applications(student_username, subject_id) values( 'kent', 1)
insert into applications(student_username, subject_id) values( 'kent', 3)

insert into users(username, password, role) values ('kgeorgiou', 'kostas123', 'PROFESSOR')
insert into users(username, password, role) values ('spappas', 'stefanos123', 'PROFESSOR')
insert into users(username, password, role) values ('christos', 'christos123', 'PROFESSOR')

insert into users(username, password, role)    values('bob', 'bob123', 'STUDENT')
insert into users(username, password, role)    values('mary', 'mary123', 'STUDENT')
insert into users(username, password, role)    values('willie', 'willie123', 'STUDENT')
insert into users(username, password, role)    values('martin', 'martin123', 'STUDENT')
insert into users(username, password, role)    values('kent', 'kent123', 'STUDENT')

insert into theses(report_grade, presentation_grade, implementation_grade, total_grade, student_id, subject_id, professor_Username) values(10, 10, 10, 10, 'bob', 1, 'kgeorgiou')
insert into theses(report_grade, presentation_grade, implementation_grade, total_grade, student_id, subject_id, professor_Username) values(9, 9, 9, 9, 'kent', 3, 'spappas')

insert into evaluation_board(thesis_id, board_member_username) values(1, 'spappas')
insert into evaluation_board(thesis_id, board_member_username) values(1, 'christos')
insert into evaluation_board(thesis_id, board_member_username) values(2, 'kgeorgiou')
insert into evaluation_board(thesis_id, board_member_username) values(2, 'christos')



