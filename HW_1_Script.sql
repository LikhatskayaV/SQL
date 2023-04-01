--Таблица employees
--
--Создать таблицу employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null
--Наполнить таблицу employee 70 строками


create table employees (
		id serial primary key,
		employee_name varchar (50) not null
);

select * from employees;

insert into employees (employee_name)
values ('Vika_Likhatskaya'),
	   ('Don_Perriniom'),
	   ('Peter_Elfimov'),
	   ('Lara_Croft'),
	   ('Moby_Dik'),
	   ('Zac_Brown'),
	   ('Ivan_Ivanov'),
	   ('Dim_Kirilenko'),
	   ('Yan_Loginov'),
	   ('Vadim_Kalinin'),
	   ('Iren_Mikulina'),
	   ('Julia_Torch'),
	   ('Svetlana_Knigina'),
	   ('Jiuseppe_Bedi'),
	   ('Veronica_Bella'),
	   ('John_Dori'),
	   ('Jim_Bim'),
	   ('Ihor_Ignatiev'),
	   ('Larisa_Pavlova'),
	   ('Elena_Petrova'),
	   ('Tatiana_Smirnova'),
	   ('Vasili_Kotikov'),
	   ('Lana_Banana'),
	   ('Tiotya_Motiya'),
	   ('Susan_Smith'),
	   ('Michael_Ryan'),
	   ('Veyn_Williams'),
	   ('Mark_Edwards'),
	   ('Sew_Murray'),
	   ('Tim_Hudges'),
	   ('Gracham_Carter'),
	   ('Eugen_Tkachenko'),
	   ('Aleksandr_Dubrovski'),
	   ('Anna_Bogdanovich'),
	   ('Sheron_Rassel'),
	   ('Melissa_Gray'),
	   ('Victor_Li'),
	   ('Paul_Smith'),
	   ('Emma_Hugges'),
	   ('Andrew_Yurashevich'),
	   ('Kristina_Korsak'),
	   ('Anastasiya_Schastnaya'),
	   ('Valery_Meladze'),
	   ('Kostya_Dziu'),
	   ('Steven_Jorginsen'),
	   ('Caren_Matheson'),
	   ('Rob_Wise'),
	   ('Liz_Wella'),
	   ('Tim_Kaen'),
	   ('Glrb_Hramzov'),
	   ('Scot_Adam'),
	   ('Vitali_Lemeshevski'),
	   ('Denis_Davudov'),
	   ('Alexa_Mini'),
	   ('Natali_Medianik'),
	   ('Alisa_Buzo'),
	   ('Janette_Bich'),
	   ('Jacklin_Hurt'),
	   ('Olya_Shkel'),
	   ('Marina_Turnova'),
	   ('Barbara_Brylska'),
	   ('Katya_Kravch'),
	   ('Omar_Eps'),
	   ('Margaret_Tetcher'),
	   ('Jess_Parcker'),
	   ('Monicca_Beluchi'),
	   ('Maria_Gimro'),
	   ('Patrissia_Web'),
	   ('Iren_Adler'),
	   ('Jack_Black');
	   
	  
--Таблица salary
--
--Создать таблицу salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null
--Наполнить таблицу salary 15 строками:
	  
	  
	  
create table salary (
	id serial primary key,
	monthly_salary int not null
	);

select * from salary;
	
insert into salary (monthly_salary)	
values (1000),
	   (1100),
	   (1200),
	   (1300),
	   (1400),
	   (1500),
	   (1600),
	   (1700),
	   (1800),
	   (1900),
	   (2000),
       (2100),
	   (2200),
       (2300),
       (2400);
      

      
--Таблица employee_salary
--
--Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null
--Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id
      

 create table employee_salary (
 	id serial primary key,
 	employee_id int not null unique,
 	salary_id int not null
 	 );
 
 	select * from employee_salary;
 	
 insert into employee_salary (employee_id, salary_id)
 	values (3,5),
     (1,4),
     (5,9),
     (23,4),
     (11,15),
     (72,10),
     (73,6),
     (7,8),
     (28,11),
     (15,13),
     (27,4),
     (16,1),
     (80,7),
     (21,15),
     (24,8),
     (26,1),
     (25,10),
     (30,8),
     (79,14),
     (8,7),
     (78,3),
     (77,9),
     (76,13),
     (75,3),
     (74,1),
     (2,10),
     (4,5),
     (6,8),
     (9,11),
     (12,13),
     (71,6),
     (29,11),
     (22,13),
     (20,12),
     (19,14),
     (18,15),
     (17,11),
     (14,9),
     (13,12),
     (10,7);
    
    
    
    
    
--    Таблица roles
--
--Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique
--Поменять тип столба role_name с int на varchar(30)
--Наполнить таблицу roles 20 строками:

    
create table roles(
	id serial primary key,
	role_name int not null unique
);

select * from roles;

alter table roles 
alter column role_name 
type varchar(30);

INSERT INTO roles (role_name)  
values ('Junior Python developer'),
	('Middle Python developer'),
	('Senior Python developer'),
	('Junior Java developer'),
	('Middle Java developer'),
	('Senior Java developer'),
	('Junior JavaScript developer'),
	('Middle JavaScript developer'),
	('Senior JavaScript developer'),
	('Junior Manual QA engineer'),
	('Middle Manual QA engineer'),
	('Senior Manual QA engineer'),
	('Project Manager'),
	('Designer'),
	('HR'),
	('CEO'),
	('Sales manager'),
	('Junior Automation QA engineer'),
	('Middle Automation QA engineer'),
	('Senior Automation QA engineer');


--Таблица roles_employee
--
--Создать таблицу roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
--Наполнить таблицу roles_employee 40 строками:


create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id) 
		references employees(id),
	foreign key (role_id)
		references roles(id)
);


select * from roles_employee;


insert into roles_employee (employee_id, role_id)
values  (1, 1),
	   (3, 2),
	   (5, 5),
	   (18, 4),
	   (40, 6),
	   (39, 19),
	   (2, 3),
	   (6, 10),
	   (36, 8),
	   (10, 10),
	   (17, 11),
	   (26, 8),
	   (34, 20),
	   (15, 4),
	   (7, 9),
	   (14, 14),
	   (11, 9),
	   (12, 13),
	   (23, 2),
	   (30, 11),
	   (38, 18),
	   (22, 3),
	   (25, 7),
	   (4, 15),
	   (37, 8),
	   (9, 6),
	   (33, 3),
	   (27, 9),
	   (13, 11),
	   (24, 17),
	   (16, 12),
	   (19, 5),
	   (28, 6),
	   (20,9),
	   (35, 12),
	   (29, 7),
	   (21,17),
	   (31, 16),
	   (8, 20),
	   (32, 16);








    
      
	
	