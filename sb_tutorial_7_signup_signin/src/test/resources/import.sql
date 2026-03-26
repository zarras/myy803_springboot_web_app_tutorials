delete from users

ALTER TABLE USERS ALTER COLUMN id RESTART WITH 1

insert into users(username, password, role) values ('kgeorgiou', 'kostas123', 'ADMIN')
insert into users(username, password, role) values ('spappas', 'stefanos123', 'ADMIN')
insert into users(username, password, role) values ('christos', 'christos123', 'ADMIN')

insert into users(username, password, role)    values('bob', 'bob123', 'USER')
insert into users(username, password, role)    values('mary', 'mary123', 'USER')
insert into users(username, password, role)    values('willie', 'willie123', 'USER')
insert into users(username, password, role)    values('martin', 'martin123', 'USER')
insert into users(username, password, role)    values('kent', 'kent123', 'USER')


