create table students
(
    id            serial primary key,
    first_name    varchar,
    last_name     varchar,
    gender        varchar check ( gender='Female' or gender='Male' ),
    date_of_birth date,
    email         varchar unique,
    course        varchar,
    payment       numeric,
    duration      int
);

drop table students;

insert into students(first_name, last_name, gender, date_of_birth, email, course, payment, duration)
VALUES ('Manas', 'Abdugani u', 'Male', '2000-1-12', 'manas@gmail.com', 'Java', 12000.500, 9),
       ('Temirlan', 'Juzukulov', 'Male', '2001-4-17', 'temirlan@gmail.com', 'Java', 10000.300, 6),
       ('Gulmira', 'Osmonova', 'Female', '1999-7-20', 'gulmira@gmail.com', 'JS', 9000.800, 9),
       ('Ainazik', 'Amangeldieva', 'Female', '2002-1-12', 'ainazik@gmail.com', 'JS', 10000, 3),
       ('Adilet', 'Islambek', 'Male', '1998-9-4', 'adilet@gmail.com', 'JS', 6000, 3),
       ('Aizat', 'Duisheeva', 'Female', '2002-1-12', 'aizat@gmail.com', 'Java', 8000, 6),
       ('Baytik', 'Taalaybekov', 'Male', '2003-7-5', 'baytik@gmail.com', 'Java', 12000, 9),
       ('Sanjar', 'abdymomunov', 'Male', '2004-1-3', 'sanjar@gmail.com', 'Java', 8000.500, 6),
       ('Erkinbek', 'Koshaliev', 'Male', '1999-1-12', 'erkinbek@gmail.com', 'JS',6000, 3),
       ('Khafiz', 'Turusbek u', 'Male', '1999-7-19', 'hafiz@gmail.com', 'JS', 12000, 7);

insert into students(first_name, last_name, gender, date_of_birth, email, course, payment, duration)
VALUES ('Nurseyit', 'Turatbek u', 'Male', '1999-7-19', null, 'JS', 12000, 7);

select * from students;
select first_name, last_name from students;
select first_name as name from students;
select first_name, last_name,payment * duration as total_payment from students;
select concat(first_name,' ',last_name) as full_name from students;
select first_name , last_name from students order by first_name desc;
select distinct course from students;
select * from students where course='Java';
select * from students where course='Java' and payment >10000;
select * from students where course='Java' or payment>10000;
select * from students limit 7;
select * from students offset 3;
select * from students limit 6 offset 3;
select * from students fetch first 5 rows only ;
select * from students where email in  ('ainazik@gmail.com','gulmira@gmail.com');
select *from students where gender not in('Female');
select * from students where date_of_birth between '2000-1-1' and '2004-1-1';
select * from students where last_name like '%va';
select * from students where first_name like 'T%';
select * from students where first_name like '______';
select * from students where last_name ilike 'a%';--ignoreCase
select course from students group by course;
select gender,count(gender)from students group by gender;
select duration ,count(duration)from students group by duration;
select gender,count(gender)from students  group by gender having count(gender)>5;

select gender,count(*)from students group by gender;
select max(payment)from students;
select min(payment)from students;
select avg(payment)from students;
select round(avg(payment))from students;
select sum(payment)from students;
select coalesce(email,'email is not privided')from students;

select now();
select now()-interval '1 year';
select now()+interval '10 years';
select now()-interval '2 weeks';
select now()::date;
select now()::time;
select extract(year from now());
select extract(month from now());
select extract(day from now());
select extract(dow from now());
select extract(century from now());

delete from students where first_name='Aizat';
delete from students where gender='Female';
update students set course = 'Python' where course='JS';
update students set last_name='Abdymomunov' where last_name='abdymomunov';
select  * from students;
