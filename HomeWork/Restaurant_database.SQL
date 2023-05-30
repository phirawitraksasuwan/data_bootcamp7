--restaurant database
-- 5Table
-- 5qeury
--  1 WITH
--  1 Subqeury

--open new data base
.open restaurant 
.mode column
.header on 
  
drop table menus ;
create table  menus  (
  Menus_id int NOT NULL PRIMARY KEY ,
  Menus_name TEXT ,
  Prics real 
) ;

insert into menus values
  (1 , 'Pizza',6.99),
  (2 , 'Hotdog',3.99),
  (3 , 'KFC' , 2.99),
  (4 , 'water' , 1.99),
  (5 , 'pepsi' , 0.99),
  (6 , 'burger' , 4.99),
  (7 , 'salad ' , 8.99),
  (8 , 'chicken over rice ' , 15.99),
  (9 , 'mac and cheese' , 8.99),
  (10, 'pork chop' , 17.99),
  (11 , 'BBQ Ribs' , 25)
  
  ;
drop table staff ;
create table staff (
  staff_id int NOT NULL PRIMARY KEY,
  staff_name TEXT ,
  staff_phone text
) ;

insert into staff values
  (1 , 'Marisa'  , 1000000001) ,
  (2 , 'Davit'   , 1000000002) ,
  (3 , 'Marry'   , 1000000003) 
  ;

drop table customers ;
create table customers (
  Customer_ID int NOT NULL PRIMARY KEY, 
  Customer_name text , 
  Customer_phone int ,
  member_id int --FOREIGN KEY REFERENCES member(member_id)
) ; 
insert into customers values
  (1 , 'Rebron' , 2000000001 ,1) ,
  (2 , 'John'   , 2000000002 ,1) ,
  (3 , 'Milli'  , 2000000003 ,1) ,
  (4 , 'Lional' , 2000000004 ,3) ,
  (5 , 'Marry'  , 2000000005 ,2) , 
  (6 , 'xo'     , 2000000006 ,2) ,
  (7 , 'Yeem'   , 2000000007 ,3) , 
  (8 , 'Peet'   , 2000000008 ,2) ,
  (9 , 'Tee'    , 2000000009 ,3) ,
  (10, 'pop'    , 2000000010 ,2) 
  ;
drop table member;
create table member (
  member_id int NOT NULL PRIMARY KEY,
  member_Level text ,
  discount real 
) ;
insert into member values
  (1 , 'NON' , 1) ,
  (2 , 'Gold' , 0.9) ,
  (3 , 'Daimond' , 0.8)
  ;
drop table paymentm; 
create table paymentm (
  paymentm_id int NOT NULL PRIMARY KEY,
  paymentm_name text
) ;

insert into paymentm values
  (1 , 'cash'),
  (2 , 'QR_Code')
  ;
drop table Orders ;
create table  Orders (
  Order_id int NOT NULL PRIMARY KEY, --PK 
  Order_date text ,
  customers int ,
  Menus_id int ,
  staff_id int ,
  paymentm_id int 
) ;
insert into Orders values 
  (1 , '2023-01-01' , 1 , 1 ,1 ,1 ),
  (2 , '2023-01-01' , 2 , 4 ,2 ,2 ), 
  (3 , '2023-01-01' , 3 , 8 ,3 ,1 ),
  (4 , '2023-01-01' , 4 , 9 ,2 ,2 ),
  (5 , '2023-01-01' , 6 , 11,1 ,1 ),
  (6 , '2023-01-01' , 5 , 7 ,1 ,1 ),
  (7 , '2023-01-02' , 10 , 3 ,3 ,2 ),
  (8 , '2023-01-02' , 8  , 5 ,2 ,1 ),
  (9 , '2023-01-02' , 7  , 4 ,1 ,1 )
  
  ;
select * from menus;
select * from staff;
select * from customers;
select * from member ; 
select * from paymentm;
select * from Orders ;

--  1 WITH
--  1 Subqeury

/*WITH sub as (select 
  *
from Orders 
join menus       on Orders.Menus_id = menus.Menus_id
join customers   on Orders.customers = customers.Customer_ID 
join member      on customers.member_id = member.member_id
join paymentm    on Orders.paymentm_id = paymentm.paymentm_id
join staff       on Orders.staff_id = staff.staff_id)*/
--
--  
select 
  Order_id,
  Order_date,
  customer_name,
  Menus_name,
  member_Level,
  prics,
  discount, 
  paymentm_name,
  staff_name
from (select 
  *
from Orders 
join menus       on Orders.Menus_id = menus.Menus_id
join customers   on Orders.customers = customers.Customer_ID 
join member      on customers.member_id = member.member_id
join paymentm    on Orders.paymentm_id = paymentm.paymentm_id
join staff       on Orders.staff_id = staff.staff_id)
;

--where customers = 1
--group by customers

WITH sub1 as (select 
  *
from Orders 
join menus       on Orders.Menus_id = menus.Menus_id
join customers   on Orders.customers = customers.Customer_ID 
join member      on customers.member_id = member.member_id
join paymentm    on Orders.paymentm_id = paymentm.paymentm_id
join staff       on Orders.staff_id = staff.staff_id)
--01--  เเต่ละคนต้องจ่ายค่าอาหารเท่าไหร่ WITH
select 
  Customer_name ,
  Menus_name ,
  Prics,
  Prics * discount as Full_Prics,
  Prics * discount *1.07 as Total
from sub1
where Order_date = '2023-01-01';

--02-- aggregate funtions 
WITH sub2 as (select 
  *
from Orders 
join menus       on Orders.Menus_id = menus.Menus_id
join customers   on Orders.customers = customers.Customer_ID 
join member      on customers.member_id = member.member_id
join paymentm    on Orders.paymentm_id = paymentm.paymentm_id
join staff       on Orders.staff_id = staff.staff_id) 

  
select 
    Order_date,
    count(*) ,
    sum(Prics),
    max(Prics),
    min(Prics),
    avg(Prics)
from sub2 
group by Order_date ;
