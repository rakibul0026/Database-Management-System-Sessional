create database payment ;
 use payment;
 create table info(
 customer_id int primary key,
 customer varchar(50),
 mode varchar(40),
 city varchar(50)
 );
insert into info
 (customer_id ,customer,mode, city)
 values
 (101,"oliva barrett","netbanking","portland"),
 (102,"Ethan sinclair","credit card","miami"),
 (103,"maya hernandez","credit card","seattle"),
 (104,"liam donovan","netbanking","portland"),
 (105,"oliva barrett","credit card","portland"),
 (106,"oliva barrett","debit card","portland"),
 (107,"oliva barrett","debit card","portland"),
 (108,"oliva barrett","netbanking","portland"),
 (109,"oliva barrett","netbanking","portland"),
 (110,"jackson brooks","credit card","portland");
 
 select * from info;
  select mode,count(customer)
  from info
  group by mode
