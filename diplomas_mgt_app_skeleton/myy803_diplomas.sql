create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);
create table applications (id integer not null auto_increment, student_username varchar(255), subject_id integer, primary key (id)) engine=InnoDB;
create table evaluation_board (thesis_id integer not null, board_member_username varchar(255) not null) engine=InnoDB;
create table professors (username varchar(255) not null, full_name varchar(255), specialty varchar(255), primary key (username)) engine=InnoDB;
create table students (username varchar(255) not null, am varchar(255), average_grade double precision, full_name varchar(255), year_of_studies integer, primary key (username)) engine=InnoDB;
create table subjects (id integer not null auto_increment, available bit, description varchar(255), title varchar(255), supervisor_username varchar(255), primary key (id)) engine=InnoDB;
create table theses (id integer not null auto_increment, implementation_grade double precision, presentation_grade double precision, report_grade double precision, total_grade double precision, student_id varchar(255), subject_id integer, professor_username varchar(255), primary key (id)) engine=InnoDB;
create table users (username varchar(255) not null, password varchar(255), role varchar(255), primary key (username)) engine=InnoDB;
alter table applications add constraint FK8sleurs2jigyauf46ag6v48ta foreign key (student_username) references students (username);
alter table applications add constraint FKfe41rmtib8a63smqv270wnq2s foreign key (subject_id) references subjects (id);
alter table evaluation_board add constraint FKmw7jlfxd8578id0eio1q6o57y foreign key (board_member_username) references professors (username);
alter table evaluation_board add constraint FKjn27rc7q9li2kc20wpjlcgb62 foreign key (thesis_id) references theses (id);
alter table subjects add constraint FK1yuh3kimtdcckfqpu210ruucj foreign key (supervisor_username) references professors (username);
alter table theses add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc foreign key (student_id) references students (username);
alter table theses add constraint FK9s2wngauqqdpd385l7elulmo4 foreign key (subject_id) references subjects (id);
alter table theses add constraint FKk183oi3rpfkn1s1frh5f82xbj foreign key (professor_username) references professors (username);

    create table applications (
        id integer generated by default as identity,
        subject_id integer,
        student_username varchar(255),
        primary key (id)
    );

    create table evaluation_board (
        thesis_id integer not null,
        board_member_username varchar(255) not null
    );

    create table professors (
        full_name varchar(255),
        specialty varchar(255),
        username varchar(255) not null,
        primary key (username)
    );

    create table students (
        average_grade float(53),
        year_of_studies integer,
        am varchar(255),
        full_name varchar(255),
        username varchar(255) not null,
        primary key (username)
    );

    create table subjects (
        available boolean,
        id integer generated by default as identity,
        description varchar(255),
        supervisor_username varchar(255),
        title varchar(255),
        primary key (id)
    );

    create table theses (
        id integer generated by default as identity,
        implementation_grade float(53),
        presentation_grade float(53),
        report_grade float(53),
        subject_id integer unique,
        total_grade float(53),
        professor_username varchar(255),
        student_id varchar(255) unique,
        primary key (id)
    );

    create table users (
        password varchar(250) not null,
        username varchar(250) not null,
        role enum ('PROFESSOR','STUDENT'),
        primary key (username)
    );

    alter table if exists applications 
       add constraint FK8sleurs2jigyauf46ag6v48ta 
       foreign key (student_username) 
       references students;

    alter table if exists applications 
       add constraint FKfe41rmtib8a63smqv270wnq2s 
       foreign key (subject_id) 
       references subjects;

    alter table if exists evaluation_board 
       add constraint FKmw7jlfxd8578id0eio1q6o57y 
       foreign key (board_member_username) 
       references professors;

    alter table if exists evaluation_board 
       add constraint FKjn27rc7q9li2kc20wpjlcgb62 
       foreign key (thesis_id) 
       references theses;

    alter table if exists subjects 
       add constraint FK1yuh3kimtdcckfqpu210ruucj 
       foreign key (supervisor_username) 
       references professors;

    alter table if exists theses 
       add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc 
       foreign key (student_id) 
       references students;

    alter table if exists theses 
       add constraint FK9s2wngauqqdpd385l7elulmo4 
       foreign key (subject_id) 
       references subjects;

    alter table if exists theses 
       add constraint FKk183oi3rpfkn1s1frh5f82xbj 
       foreign key (professor_username) 
       references professors;

    create table applications (
        id integer generated by default as identity,
        subject_id integer,
        student_username varchar(255),
        primary key (id)
    );

    create table evaluation_board (
        thesis_id integer not null,
        board_member_username varchar(255) not null
    );

    create table professors (
        full_name varchar(255),
        specialty varchar(255),
        username varchar(255) not null,
        primary key (username)
    );

    create table students (
        average_grade float(53),
        year_of_studies integer,
        am varchar(255),
        full_name varchar(255),
        username varchar(255) not null,
        primary key (username)
    );

    create table subjects (
        available boolean,
        id integer generated by default as identity,
        description varchar(255),
        supervisor_username varchar(255),
        title varchar(255),
        primary key (id)
    );

    create table theses (
        id integer generated by default as identity,
        implementation_grade float(53),
        presentation_grade float(53),
        report_grade float(53),
        subject_id integer unique,
        total_grade float(53),
        professor_username varchar(255),
        student_id varchar(255) unique,
        primary key (id)
    );

    create table users (
        password varchar(250) not null,
        username varchar(250) not null,
        role enum ('PROFESSOR','STUDENT'),
        primary key (username)
    );

    alter table if exists applications 
       add constraint FK8sleurs2jigyauf46ag6v48ta 
       foreign key (student_username) 
       references students;

    alter table if exists applications 
       add constraint FKfe41rmtib8a63smqv270wnq2s 
       foreign key (subject_id) 
       references subjects;

    alter table if exists evaluation_board 
       add constraint FKmw7jlfxd8578id0eio1q6o57y 
       foreign key (board_member_username) 
       references professors;

    alter table if exists evaluation_board 
       add constraint FKjn27rc7q9li2kc20wpjlcgb62 
       foreign key (thesis_id) 
       references theses;

    alter table if exists subjects 
       add constraint FK1yuh3kimtdcckfqpu210ruucj 
       foreign key (supervisor_username) 
       references professors;

    alter table if exists theses 
       add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc 
       foreign key (student_id) 
       references students;

    alter table if exists theses 
       add constraint FK9s2wngauqqdpd385l7elulmo4 
       foreign key (subject_id) 
       references subjects;

    alter table if exists theses 
       add constraint FKk183oi3rpfkn1s1frh5f82xbj 
       foreign key (professor_username) 
       references professors;

    create table applications (
        id integer generated by default as identity,
        subject_id integer,
        student_username varchar(255),
        primary key (id)
    );

    create table evaluation_board (
        thesis_id integer not null,
        board_member_username varchar(255) not null
    );

    create table professors (
        full_name varchar(255),
        specialty varchar(255),
        username varchar(255) not null,
        primary key (username)
    );

    create table students (
        average_grade float(53),
        year_of_studies integer,
        am varchar(255),
        full_name varchar(255),
        username varchar(255) not null,
        primary key (username)
    );

    create table subjects (
        available boolean,
        id integer generated by default as identity,
        description varchar(255),
        supervisor_username varchar(255),
        title varchar(255),
        primary key (id)
    );

    create table theses (
        id integer generated by default as identity,
        implementation_grade float(53),
        presentation_grade float(53),
        report_grade float(53),
        subject_id integer unique,
        total_grade float(53),
        professor_username varchar(255),
        student_id varchar(255) unique,
        primary key (id)
    );

    create table users (
        password varchar(250) not null,
        username varchar(250) not null,
        role enum ('PROFESSOR','STUDENT'),
        primary key (username)
    );

    alter table if exists applications 
       add constraint FK8sleurs2jigyauf46ag6v48ta 
       foreign key (student_username) 
       references students;

    alter table if exists applications 
       add constraint FKfe41rmtib8a63smqv270wnq2s 
       foreign key (subject_id) 
       references subjects;

    alter table if exists evaluation_board 
       add constraint FKmw7jlfxd8578id0eio1q6o57y 
       foreign key (board_member_username) 
       references professors;

    alter table if exists evaluation_board 
       add constraint FKjn27rc7q9li2kc20wpjlcgb62 
       foreign key (thesis_id) 
       references theses;

    alter table if exists subjects 
       add constraint FK1yuh3kimtdcckfqpu210ruucj 
       foreign key (supervisor_username) 
       references professors;

    alter table if exists theses 
       add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc 
       foreign key (student_id) 
       references students;

    alter table if exists theses 
       add constraint FK9s2wngauqqdpd385l7elulmo4 
       foreign key (subject_id) 
       references subjects;

    alter table if exists theses 
       add constraint FKk183oi3rpfkn1s1frh5f82xbj 
       foreign key (professor_username) 
       references professors;

    create table applications (
        id integer generated by default as identity,
        subject_id integer,
        student_username varchar(255),
        primary key (id)
    );

    create table evaluation_board (
        thesis_id integer not null,
        board_member_username varchar(255) not null
    );

    create table professors (
        full_name varchar(255),
        specialty varchar(255),
        username varchar(255) not null,
        primary key (username)
    );

    create table students (
        average_grade float(53),
        year_of_studies integer,
        am varchar(255),
        full_name varchar(255),
        username varchar(255) not null,
        primary key (username)
    );

    create table subjects (
        available boolean,
        id integer generated by default as identity,
        description varchar(255),
        supervisor_username varchar(255),
        title varchar(255),
        primary key (id)
    );

    create table theses (
        id integer generated by default as identity,
        implementation_grade float(53),
        presentation_grade float(53),
        report_grade float(53),
        subject_id integer unique,
        total_grade float(53),
        professor_username varchar(255),
        student_id varchar(255) unique,
        primary key (id)
    );

    create table users (
        password varchar(250) not null,
        username varchar(250) not null,
        role enum ('PROFESSOR','STUDENT'),
        primary key (username)
    );

    alter table if exists applications 
       add constraint FK8sleurs2jigyauf46ag6v48ta 
       foreign key (student_username) 
       references students;

    alter table if exists applications 
       add constraint FKfe41rmtib8a63smqv270wnq2s 
       foreign key (subject_id) 
       references subjects;

    alter table if exists evaluation_board 
       add constraint FKmw7jlfxd8578id0eio1q6o57y 
       foreign key (board_member_username) 
       references professors;

    alter table if exists evaluation_board 
       add constraint FKjn27rc7q9li2kc20wpjlcgb62 
       foreign key (thesis_id) 
       references theses;

    alter table if exists subjects 
       add constraint FK1yuh3kimtdcckfqpu210ruucj 
       foreign key (supervisor_username) 
       references professors;

    alter table if exists theses 
       add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc 
       foreign key (student_id) 
       references students;

    alter table if exists theses 
       add constraint FK9s2wngauqqdpd385l7elulmo4 
       foreign key (subject_id) 
       references subjects;

    alter table if exists theses 
       add constraint FKk183oi3rpfkn1s1frh5f82xbj 
       foreign key (professor_username) 
       references professors;

    create table applications (
        id integer generated by default as identity,
        subject_id integer,
        student_username varchar(255),
        primary key (id)
    );

    create table evaluation_board (
        thesis_id integer not null,
        board_member_username varchar(255) not null
    );

    create table professors (
        full_name varchar(255),
        specialty varchar(255),
        username varchar(255) not null,
        primary key (username)
    );

    create table students (
        average_grade float(53),
        year_of_studies integer,
        am varchar(255),
        full_name varchar(255),
        username varchar(255) not null,
        primary key (username)
    );

    create table subjects (
        available boolean,
        id integer generated by default as identity,
        description varchar(255),
        supervisor_username varchar(255),
        title varchar(255),
        primary key (id)
    );

    create table theses (
        id integer generated by default as identity,
        implementation_grade float(53),
        presentation_grade float(53),
        report_grade float(53),
        subject_id integer unique,
        total_grade float(53),
        professor_username varchar(255),
        student_id varchar(255) unique,
        primary key (id)
    );

    create table users (
        password varchar(250) not null,
        username varchar(250) not null,
        role enum ('PROFESSOR','STUDENT'),
        primary key (username)
    );

    alter table if exists applications 
       add constraint FK8sleurs2jigyauf46ag6v48ta 
       foreign key (student_username) 
       references students;

    alter table if exists applications 
       add constraint FKfe41rmtib8a63smqv270wnq2s 
       foreign key (subject_id) 
       references subjects;

    alter table if exists evaluation_board 
       add constraint FKmw7jlfxd8578id0eio1q6o57y 
       foreign key (board_member_username) 
       references professors;

    alter table if exists evaluation_board 
       add constraint FKjn27rc7q9li2kc20wpjlcgb62 
       foreign key (thesis_id) 
       references theses;

    alter table if exists subjects 
       add constraint FK1yuh3kimtdcckfqpu210ruucj 
       foreign key (supervisor_username) 
       references professors;

    alter table if exists theses 
       add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc 
       foreign key (student_id) 
       references students;

    alter table if exists theses 
       add constraint FK9s2wngauqqdpd385l7elulmo4 
       foreign key (subject_id) 
       references subjects;

    alter table if exists theses 
       add constraint FKk183oi3rpfkn1s1frh5f82xbj 
       foreign key (professor_username) 
       references professors;

    create table applications (
        id integer generated by default as identity,
        subject_id integer,
        student_username varchar(255),
        primary key (id)
    );

    create table evaluation_board (
        thesis_id integer not null,
        board_member_username varchar(255) not null
    );

    create table professors (
        full_name varchar(255),
        specialty varchar(255),
        username varchar(255) not null,
        primary key (username)
    );

    create table students (
        average_grade float(53),
        year_of_studies integer,
        am varchar(255),
        full_name varchar(255),
        username varchar(255) not null,
        primary key (username)
    );

    create table subjects (
        available boolean,
        id integer generated by default as identity,
        description varchar(255),
        supervisor_username varchar(255),
        title varchar(255),
        primary key (id)
    );

    create table theses (
        id integer generated by default as identity,
        implementation_grade float(53),
        presentation_grade float(53),
        report_grade float(53),
        subject_id integer unique,
        total_grade float(53),
        professor_username varchar(255),
        student_id varchar(255) unique,
        primary key (id)
    );

    create table users (
        password varchar(250) not null,
        username varchar(250) not null,
        role enum ('PROFESSOR','STUDENT'),
        primary key (username)
    );

    alter table if exists applications 
       add constraint FK8sleurs2jigyauf46ag6v48ta 
       foreign key (student_username) 
       references students;

    alter table if exists applications 
       add constraint FKfe41rmtib8a63smqv270wnq2s 
       foreign key (subject_id) 
       references subjects;

    alter table if exists evaluation_board 
       add constraint FKmw7jlfxd8578id0eio1q6o57y 
       foreign key (board_member_username) 
       references professors;

    alter table if exists evaluation_board 
       add constraint FKjn27rc7q9li2kc20wpjlcgb62 
       foreign key (thesis_id) 
       references theses;

    alter table if exists subjects 
       add constraint FK1yuh3kimtdcckfqpu210ruucj 
       foreign key (supervisor_username) 
       references professors;

    alter table if exists theses 
       add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc 
       foreign key (student_id) 
       references students;

    alter table if exists theses 
       add constraint FK9s2wngauqqdpd385l7elulmo4 
       foreign key (subject_id) 
       references subjects;

    alter table if exists theses 
       add constraint FKk183oi3rpfkn1s1frh5f82xbj 
       foreign key (professor_username) 
       references professors;

    create table applications (
        id integer generated by default as identity,
        subject_id integer,
        student_username varchar(255),
        primary key (id)
    );

    create table evaluation_board (
        thesis_id integer not null,
        board_member_username varchar(255) not null
    );

    create table professors (
        full_name varchar(255),
        specialty varchar(255),
        username varchar(255) not null,
        primary key (username)
    );

    create table students (
        average_grade float(53),
        year_of_studies integer,
        am varchar(255),
        full_name varchar(255),
        username varchar(255) not null,
        primary key (username)
    );

    create table subjects (
        available boolean,
        id integer generated by default as identity,
        description varchar(255),
        supervisor_username varchar(255),
        title varchar(255),
        primary key (id)
    );

    create table theses (
        id integer generated by default as identity,
        implementation_grade float(53),
        presentation_grade float(53),
        report_grade float(53),
        subject_id integer unique,
        total_grade float(53),
        professor_username varchar(255),
        student_id varchar(255) unique,
        primary key (id)
    );

    create table users (
        password varchar(250) not null,
        username varchar(250) not null,
        role enum ('PROFESSOR','STUDENT'),
        primary key (username)
    );

    alter table if exists applications 
       add constraint FK8sleurs2jigyauf46ag6v48ta 
       foreign key (student_username) 
       references students;

    alter table if exists applications 
       add constraint FKfe41rmtib8a63smqv270wnq2s 
       foreign key (subject_id) 
       references subjects;

    alter table if exists evaluation_board 
       add constraint FKmw7jlfxd8578id0eio1q6o57y 
       foreign key (board_member_username) 
       references professors;

    alter table if exists evaluation_board 
       add constraint FKjn27rc7q9li2kc20wpjlcgb62 
       foreign key (thesis_id) 
       references theses;

    alter table if exists subjects 
       add constraint FK1yuh3kimtdcckfqpu210ruucj 
       foreign key (supervisor_username) 
       references professors;

    alter table if exists theses 
       add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc 
       foreign key (student_id) 
       references students;

    alter table if exists theses 
       add constraint FK9s2wngauqqdpd385l7elulmo4 
       foreign key (subject_id) 
       references subjects;

    alter table if exists theses 
       add constraint FKk183oi3rpfkn1s1frh5f82xbj 
       foreign key (professor_username) 
       references professors;

    create table applications (
        id integer generated by default as identity,
        subject_id integer,
        student_username varchar(255),
        primary key (id)
    );

    create table evaluation_board (
        thesis_id integer not null,
        board_member_username varchar(255) not null
    );

    create table professors (
        full_name varchar(255),
        specialty varchar(255),
        username varchar(255) not null,
        primary key (username)
    );

    create table students (
        average_grade float(53),
        year_of_studies integer,
        am varchar(255),
        full_name varchar(255),
        username varchar(255) not null,
        primary key (username)
    );

    create table subjects (
        available boolean,
        id integer generated by default as identity,
        description varchar(255),
        supervisor_username varchar(255),
        title varchar(255),
        primary key (id)
    );

    create table theses (
        id integer generated by default as identity,
        implementation_grade float(53),
        presentation_grade float(53),
        report_grade float(53),
        subject_id integer unique,
        total_grade float(53),
        professor_username varchar(255),
        student_id varchar(255) unique,
        primary key (id)
    );

    create table users (
        password varchar(250) not null,
        username varchar(250) not null,
        role enum ('PROFESSOR','STUDENT'),
        primary key (username)
    );

    alter table if exists applications 
       add constraint FK8sleurs2jigyauf46ag6v48ta 
       foreign key (student_username) 
       references students;

    alter table if exists applications 
       add constraint FKfe41rmtib8a63smqv270wnq2s 
       foreign key (subject_id) 
       references subjects;

    alter table if exists evaluation_board 
       add constraint FKmw7jlfxd8578id0eio1q6o57y 
       foreign key (board_member_username) 
       references professors;

    alter table if exists evaluation_board 
       add constraint FKjn27rc7q9li2kc20wpjlcgb62 
       foreign key (thesis_id) 
       references theses;

    alter table if exists subjects 
       add constraint FK1yuh3kimtdcckfqpu210ruucj 
       foreign key (supervisor_username) 
       references professors;

    alter table if exists theses 
       add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc 
       foreign key (student_id) 
       references students;

    alter table if exists theses 
       add constraint FK9s2wngauqqdpd385l7elulmo4 
       foreign key (subject_id) 
       references subjects;

    alter table if exists theses 
       add constraint FKk183oi3rpfkn1s1frh5f82xbj 
       foreign key (professor_username) 
       references professors;

    create table applications (
        id integer generated by default as identity,
        subject_id integer,
        student_username varchar(255),
        primary key (id)
    );

    create table evaluation_board (
        thesis_id integer not null,
        board_member_username varchar(255) not null
    );

    create table professors (
        full_name varchar(255),
        specialty varchar(255),
        username varchar(255) not null,
        primary key (username)
    );

    create table students (
        average_grade float(53),
        year_of_studies integer,
        am varchar(255),
        full_name varchar(255),
        username varchar(255) not null,
        primary key (username)
    );

    create table subjects (
        available boolean,
        id integer generated by default as identity,
        description varchar(255),
        supervisor_username varchar(255),
        title varchar(255),
        primary key (id)
    );

    create table theses (
        id integer generated by default as identity,
        implementation_grade float(53),
        presentation_grade float(53),
        report_grade float(53),
        subject_id integer unique,
        total_grade float(53),
        professor_username varchar(255),
        student_id varchar(255) unique,
        primary key (id)
    );

    create table users (
        password varchar(250) not null,
        username varchar(250) not null,
        role enum ('PROFESSOR','STUDENT'),
        primary key (username)
    );

    alter table if exists applications 
       add constraint FK8sleurs2jigyauf46ag6v48ta 
       foreign key (student_username) 
       references students;

    alter table if exists applications 
       add constraint FKfe41rmtib8a63smqv270wnq2s 
       foreign key (subject_id) 
       references subjects;

    alter table if exists evaluation_board 
       add constraint FKmw7jlfxd8578id0eio1q6o57y 
       foreign key (board_member_username) 
       references professors;

    alter table if exists evaluation_board 
       add constraint FKjn27rc7q9li2kc20wpjlcgb62 
       foreign key (thesis_id) 
       references theses;

    alter table if exists subjects 
       add constraint FK1yuh3kimtdcckfqpu210ruucj 
       foreign key (supervisor_username) 
       references professors;

    alter table if exists theses 
       add constraint FKftb1rfrfwrvxvmyuvvk8lpjcc 
       foreign key (student_id) 
       references students;

    alter table if exists theses 
       add constraint FK9s2wngauqqdpd385l7elulmo4 
       foreign key (subject_id) 
       references subjects;

    alter table if exists theses 
       add constraint FKk183oi3rpfkn1s1frh5f82xbj 
       foreign key (professor_username) 
       references professors;
