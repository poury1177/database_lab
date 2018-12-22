select * from person;

insert into person (first_name, last_name , national_id, age)
values	
('ali', 'alipour' , 11111 , 20),
('akbar' , 'akbari' , 11112 , 21),
('ahmad' , 'ahmadi' , 11113 , 20),
('reza' , 'rezaei' , 11114 , 22);

insert into student (person_id , student_number)
values 
(3 , 14147 ) ,
(4 , 159753 );
select * from student;

select person.id , person.first_name , person.last_name ,
student.student_number from student full join person
on student.person_id = person.id;

select * from person;
update person set national_id = null where id = 1 ; 

select COUNT(national_id) from person
where age > 20 ;
select * from payment ;
select * from student;
insert into payment (student_id , amount , payment_date )
values
(2 , 3500 , '2017-08-26');

select sum(amount) from payment where student_id = 2 ;

select avg(amount) from payment;

select amount 
from payment where payment_date > '2018-10-25 00:00:00.1';

select person.last_name , SUM(amount) 
from 
student join payment 
on payment.student_id = student.id 
join person on student.person_id = person.id 
group by person.last_name ;
	
Exec Sp_MsforEachTable 'Delete from ?';
select * from person;
insert into student(person_id , student_number)
values
(6 , 141145),
(7,121125);
select * from student;

select person.id , person.first_name, person.last_name , student.student_number from student join person 
on student.person_id = person.id;

select COUNT(national_id) from person
where age > 20 ;
select * from payment;
insert into payment (student_id , amount , payment_date )
values
(6 , 3500 , '2017-09 -25');
select SUM(amount) from payment where student_id = 5;

select student.student_number	 , SUM(amount) from student join payment on student.id = payment.student_id
group by student.student_number; 
