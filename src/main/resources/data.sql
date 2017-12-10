--Users
INSERT INTO sec_user (id, login, first_name, last_name, email, password) VALUES (1,'user1', 'Mehdi', 'Shahverdi', 'mshv_it@yahoo.com', 'pass1');
INSERT INTO sec_user (id, login, first_name, last_name, email, password) VALUES (2,'user2',  'Edden', 'Shahverdi', 'Edden@yahoo.com', 'pass2');
INSERT INTO sec_user (id, login, first_name, last_name, email, password) VALUES (3,'user3',  'Anna',   'Shahverdi', 'Anna@yahoo.com','pass3');
INSERT INTO sec_user (id, login, first_name, last_name, email, password) VALUES (4,'user4',  'Jennifer', 'Shahverdi', 'Jenifer@yahoo.com', 'pass4');
INSERT INTO sec_user (id, login, first_name, last_name, email, password) VALUES (5,'user5', 'Amir', 'Vosough', 'amir@yahoo.com', 'pass1');
--Roles
INSERT INTO sec_role(id, role_name) VALUES (1,'ROLE_ADMIN');
INSERT INTO sec_role(id, role_name) VALUES (2,'ROLE_USER');
--UserRoles
INSERT INTO sec_user_role (user_id , role_id) VALUES (5,1);
INSERT INTO sec_user_role (user_id , role_id) VALUES (1,2);
