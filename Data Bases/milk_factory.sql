create table employee(
	employee_id integer primary key,
    factory_id integer not null,
    full_name varchar(127) not null,
    birthday date,
    sex varchar(1) not null check (sex in ('M', 'F')),
    telephone varchar(11) unique
);
INSERT INTO employee (employee_id, factory_id, full_name, sex) VALUES ('1', '3', 'Игорев А. А.', 'M');
INSERT INTO employee (employee_id, factory_id, full_name, birthday, sex, telephone) VALUES ('12', '2', 'Александров В. К.', '1985-01-05', 'M', '89123213423');
INSERT INTO employee (employee_id, factory_id, full_name, birthday, sex, telephone) VALUES ('3', '3', 'Исеева А. М.', '1990-12-27', 'F', '89123448273');
INSERT INTO employee (employee_id, factory_id, full_name, birthday, sex, telephone) VALUES ('6', '1', 'Делой В. Д.', '1971-08-19', 'M', '89103482938');
INSERT INTO employee (employee_id, factory_id, full_name, sex, telephone) VALUES ('8', '1', 'Тогузова А. Р.', 'F', '89432138304');

create table factory(
	factory_id integer primary key,
    location varchar(127),
    manager_id integer not null,
    workers_count integer not null,
    description varchar(127)
);

INSERT INTO   factory  ( factory_id ,  location ,  manager_id ,  workers_count ) VALUES ('1', 'Красногорск, ул. Песчаная, д.10', '8', '100');
INSERT INTO   factory  ( factory_id ,  location ,  manager_id ,  workers_count ,  description ) VALUES ('2', 'Зеленоград, ул. Колхозная, д.74/3', '3', '153', 'Вдобавок производят смузи');
INSERT INTO   factory  ( factory_id ,  location ,  manager_id ,  workers_count ) VALUES ('3', 'Химки, ул. Речная, д.64', '1', '138');


create table cows(
	cow_id integer primary key,
    cow_name varchar(127),
    factory_id integer not null
);

INSERT INTO   cows  ( cow_id ,  factory_id ) VALUES ('1', '1');
INSERT INTO   cows  ( cow_id ,  cow_name ,  factory_id ) VALUES ('2', 'Буренка', '2');
INSERT INTO   cows  ( cow_id ,  factory_id ) VALUES ('3', '3');
INSERT INTO   cows  ( cow_id ,  cow_name ,  factory_id ) VALUES ('14', 'Ева', '3');
INSERT INTO   cows  ( cow_id ,  factory_id ) VALUES ('31', '2');
INSERT INTO   cows  ( cow_id ,  factory_id ) VALUES ('4', '1');
INSERT INTO   cows  ( cow_id ,  cow_name ,  factory_id ) VALUES ('5', 'Алёнка', '1');
INSERT INTO   cows  ( cow_id ,  factory_id ) VALUES ('46', '2');
INSERT INTO   cows  ( cow_id ,  factory_id ) VALUES ('15', '3');
INSERT INTO   cows  ( cow_id ,  cow_name ,  factory_id ) VALUES ('43', 'Ира', '1');

---------------------
CREATE TABLE products(
product_id serial PRIMARY KEY NOT NULL,
factory_id integer not null,
prod_name VARCHAR(127) NOT NULL unique,
price FLOAT NOT NULL);

INSERT INTO products(factory_id, prod_name, price) VALUES
(2, 'Смузи клубничный', 80.5),
(2, 'Смузи малиновый', 80.5),
(1, 'Айран турецкий', 73.4),
(1, 'Айран казахский', 75),
(3, 'Тан турецкий', 61),
(2, 'Смузи яблочный', 80.5),
(2, 'Смузи банановый', 80.5),
(3, 'Тан киргизский', 66.8),
(2, 'Кумыс казахский', 72.1);

---------
CREATE TABLE customers
(customer_id serial PRIMARY KEY NOT NULL,
first_name VARCHAR(30),
last_name VARCHAR(35) NOT NULL,
phone_number VARCHAR(11),
email VARCHAR(64) NOT NULL);


INSERT INTO customers(first_name, last_name, phone_number, email) VALUES
('Penny', 'Smith', '89143242211', 'pennysmith@mail.ru'),
('Randy', 'Brown', '', 'randybr@yandex.ru'),
('Oliver', 'Thompson', '', 'thompsono@mail.ru'),
('James', 'Twist', '89143342211', 'twisty32@gmail.ru'),
('Oscar', 'Rild', '89453242231', 'rildwild@mail.ru'),
('Mario', 'Gordon', '89231453211', 'gordonnotramsey@mail.ru'),
('Александр', 'Игорев', '89144891211', 'igorevalex91@gmail.ru'),
('Роман', 'Измайлов', '89143243322', 'izmailovvvvv@mail.ru'),
('Ибрагим', 'Попов', '89143290000', 'popovibr54@gmail.ru'),
('Иван', 'Тогузов', '', 'toguzovsigma@yandex.ru'),
('Александр', 'Попов', '89143223131', 'popoalex43@mail.ru'),
('Иван', 'Алёшин', '89452142311', 'ivano777@gmail.ru'),
('Кирилл', 'Игорев', '', 'igorevvic@yandex.ru'),
('Иван', 'Очков', '89143245671', 'ochkovglass@gmail.ru'),
('Александр', 'Борисов', '', 'borisovsasha21@gmail.ru'),
('Иван', 'Попов', '89153223211', 'popovvano89@mail.ru'),
('Игорь', 'Тогузов', '', 'oguzok@yandex.ru');

CREATE TABLE orders
(order_id serial PRIMARY KEY NOT NULL,
customer_id INT NOT NULL,
products varchar(255) not null,
date_get TIMESTAMP NOT NULL,
price int not null);

INSERT INTO orders(customer_id, products, date_get, price) VALUES
(1,  'Тан киргизский, Тан турецкий, Айран турецкий ',  '2021-07-02 05:55:53 ', 9050),
(2,  'Смузи клубничный, Смузи яблочный, Смузи яблочный, Тан киргизский ',  '2023-10-25 18:22:20 ', 9430),
(3,  'Смузи малиновый, Тан киргизский, Смузи яблочный ',  '2023-03-04 03:05:44 ', 1880),
(4,  'Смузи яблочный ',  '2021-07-12 10:38:27 ', 790),
(5,  'Айран казахский, Смузи малиновый, Смузи яблочный, Тан турецкий ',  '2023-02-20 19:42:03 ', 4520),
(6,  'Айран турецкий, Кумыс казахский, Смузи малиновый, Смузи малиновый, Смузи малиновый ',  '2021-06-07 12:46:50 ', 7880),
(7,  'Айран турецкий, Смузи клубничный, Тан турецкий, Смузи банановый, Смузи яблочный ',  '2021-06-10 22:34:26 ', 6600),
(8,  'Смузи банановый, Тан турецкий ',  '2023-10-05 12:21:24 ', 5020),
(9,  'Смузи малиновый, Смузи яблочный, Смузи банановый, Кумыс казахский, Смузи яблочный ',  '2021-05-29 19:12:19 ', 6820),
(10,  'Смузи яблочный, Смузи банановый, Тан киргизский, Смузи яблочный ',  '2023-11-27 05:40:31 ', 8440),
(11,  'Тан киргизский ',  '2023-03-28 03:45:57 ', 7230),
(12,  'Кумыс казахский, Айран турецкий, Смузи банановый, Смузи малиновый, Смузи клубничный ',  '2022-05-12 12:44:34 ', 9900),
(13,  'Айран турецкий ',  '2023-03-31 23:43:22 ', 5050),
(14,  'Тан турецкий, Смузи малиновый, Смузи банановый ',  '2023-12-11 10:10:01 ', 940),
(15,  'Смузи яблочный, Айран турецкий, Тан турецкий ',  '2022-12-25 10:11:46 ', 5870),
(16,  'Смузи малиновый, Смузи малиновый ',  '2023-05-15 10:24:27 ', 7100),
(17,  'Айран казахский, Айран турецкий, Смузи банановый, Смузи банановый, Смузи клубничный ',  '2021-08-13 11:54:00 ', 7590),
(5,  'Айран турецкий, Смузи банановый, Смузи малиновый, Кумыс казахский ',  '2023-05-17 21:51:39 ', 700),
(17,  'Смузи банановый ',  '2022-04-18 15:02:22 ', 5210),
(7,  'Смузи яблочный, Тан турецкий, Смузи банановый, Кумыс казахский ',  '2023-07-30 07:09:54 ', 7490),
(3,  'Смузи банановый, Айран турецкий, Смузи малиновый, Смузи клубничный ',  '2022-09-28 23:58:07 ', 6580),
(5,  'Кумыс казахский, Смузи яблочный, Смузи малиновый, Смузи яблочный ',  '2021-05-07 07:06:00 ', 8290);


CREATE TABLE feedback
(feedback_id serial PRIMARY KEY NOT NULL,
full_name varchar(255) not null,
phone_number VARCHAR(11),
email varchar(127) not null,
feedback_text varchar(1027) not null,
date_of_feedback TIMESTAMP NOT NULL);

INSERT INTO  feedback  ( full_name ,  phone_number ,  email ,  feedback_text ,  date_of_feedback ) VALUES 
('Джейсон Мак-Колм Смит', null, 'smith01@gmail.com', 'Пора расширяться', '2023-04-17 07:00:29'),
('Кнунянц И. Л.', '89759656615', 'kunya123@gmail.com', 'Качественные продукты', '2022-05-14 15:54:05'),
('Л. Генкин.', '89644727854', 'genkinlll@yandex.com', 'Очень вкусно!', '2021-07-17 04:43:43'),
('Мейерс С.', '89219210127', 'meyerssss1007@mail.ru', 'Вкусные продукты', '2023-11-13 04:14:11'),
('Нарочницкий А. Л.', '89467396086', 'coolguy1234@gmail.com', 'Очень вкусно!', '2021-10-18 15:46:47'),
('Р. Джонсон', '89429172002', 'jonhsonsbaby007@gmail.com', 'Качественные продукты', '2021-07-11 06:06:02'),
('Р. Хелм', null, 'helmrrr@mail.ru', 'Предложение о сотрудничетве', '2022-05-03 01:55:49'),
('Сахаров А. Н.', null, 'saharov@gmail.com', 'Не понравилось', '2021-04-14 17:57:22'),
('Стивен Прата', null, 'steveprata44@gmail.com', 'Качественные продукты', '2021-03-27 02:28:51'),
('Э. Гамма', '89385703034', 'gammadeltaalfa@yandex.ru', 'Предложение о сотрудничетве', '2022-09-02 03:13:43'),
('Penny Smith', null, 'pennysmith@mail.ru', 'Пора расширяться', '2023-05-30 11:49:45'),
('Randy Brown', '89342318579', 'randybr@yandex.ru', 'Вкусные продукты', '2023-10-25 13:47:15'),
('Oliver Thompson', null, 'thompsono@mail.ru', 'Очень вкусно!', '2023-09-23 14:07:55'),
('James Twist', null, 'twisty32@gmail.ru', 'Предложение о сотрудничетве', '2021-10-14 08:46:53'),
('Oscar Rild', '89953071384', 'rildwild@mail.ru', 'Предложение о сотрудничетве', '2021-08-30 07:42:16'),
('Mario Gordon', null, 'gordonnotramsey@mail.ru', 'Не понравилось', '2023-09-12 09:14:30'),
('Александр Игорев', null, 'igorevalex91@gmail.ru', 'Не понравилось', '2022-08-05 08:46:24'),
('Роман Измайлов', null, 'izmailovvvvv@mail.ru', 'Вкусные продукты', '2021-07-14 06:43:10'),
('Ибрагим Попов', null, 'popovibr54@gmail.ru', 'Предложение о сотрудничетве', '2021-05-04 17:22:13'),
('Иван Тогузов', null, 'toguzovsigma@yandex.ru', 'Предложение о сотрудничетве', '2022-06-17 12:42:49'),
('Александр Попов', null, 'popoalex43@mail.ru', 'Предложение о сотрудничетве', '2023-05-14 15:37:50'),
('Иван Алёшин', '89205779457', 'ivano777@gmail.ru', 'Не понравилось', '2022-03-26 21:04:26'),
('Кирилл Игорев', null, 'igorevvic@yandex.ru', 'Пора расширяться', '2023-07-11 00:07:18'),
('Иван Очков', '89877340212', 'ochkovglass@gmail.ru', 'Не понравилось', '2021-04-15 02:51:37'),
('Александр Борисов', null, 'borisovsasha21@gmail.ru', 'Качественные продукты', '2021-05-18 15:57:09'),
('Иван Попов', '89511142125', 'popovvano89@mail.ru', 'Качественные продукты', '2021-06-06 18:39:59'),
('Игорь Тогузов', '89270339338', 'oguzok@yandex.ru', 'Качественные продукты', '2023-09-27 09:15:07');


ALTER TABLE employee ADD FOREIGN KEY (factory_id) REFERENCES factory (factory_id);
ALTER TABLE cows ADD FOREIGN KEY (factory_id) REFERENCES factory (factory_id);
ALTER TABLE products ADD FOREIGN KEY (factory_id) REFERENCES factory (factory_id);
ALTER TABLE orders ADD FOREIGN KEY (customer_id) REFERENCES customers (customer_id);


select * from orders;

select * from customers;

select * from factory;

select * from employee;

select * from cows;

select * from products;

select * from feedback;





