create database z4 ;
use z4 ;
create table Users (
user_id int primary key,
user_firstname varchar(40) not null,
user_lastname varchar (40) not null,
user_email varchar (60) not null,
user_password varbinary (256)
); 
insert into Users (user_id, user_firstname, user_lastname, user_email, user_password) values ("12", "juan", "quiñones", "juan0622B@gmail.com", "$2a$12$MQqnGyaDTjo2o2sAQaIDReRd6ub3ZxYYakF0heiMOtaZBIW.lUhM.");
select * from Users ;
SELECT *,
 CAST(AES_DECRYPT(user_password,'2a$12$MQqnGyaDTjo2o2sAQaIDReRd6ub3ZxYYakF0heiMOtaZBIW.lUhM.') as char (50)) end_data FROM Users WHERE user_id = 1;
 
 INSERT INTO z4.Users (user_firstname, user_lastname, user_email, user_password) VALUES (UPPER('juan'), UPPER('quiñones'), 'juan0622B@gmail.com', AES_ENCRYPT('password','$2a$12$71SJ2B6qdXDQrZUF4KR5suDytQ062kLQf/QHbatSw8wLqu1DoMppm'));
