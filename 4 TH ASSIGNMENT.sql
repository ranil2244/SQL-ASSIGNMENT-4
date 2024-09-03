 CREATE DATABASE COUNTRY_FIELD;
 
 USE COUNTRY_FIELD;
 
 CREATE TABLE COUNTRY
 (COUNTRY_ID INT PRIMARY KEY ,
 COUNTRY_NAME VARCHAR(30) ,
 POPULATION  DECIMAL(30), 
 AREA VARCHAR (30)
 );
 
 SELECT * FROM COUNTRY;
 INSERT INTO COUNTRY (COUNTRY_ID,COUNTRY_NAME,POPULATION,AREA) VALUES
 
 (1 ,'India' ,500000 , 2973190),
 (2 ,'China' ,400000 , 9388211),
 (3 ,'USA',450000 , 9147420),
 (4 ,'UK' ,350000 , 770880),
 (5 ,'Nigeria' ,250000 , 910770),
 (6 ,'Brazil' ,250000 , 8358140),
 (7 ,'Canada' ,3550000 , 16376870),
 (8 ,'Australia' ,450900 ,1000000),
 (9 ,'Mexico' ,239000 , 1943950),
 (10 ,'Philippines' ,270000 , 298170);
 
 SELECT * FROM COUNTRY;
 
 
 CREATE TABLE PERSONS (PERSON_ID INT PRIMARY KEY NOT NULL,
 F_NAME VARCHAR (30)
 ,L_NAME VARCHAR(30)
 ,POPULATION DECIMAL(30)
 ,RATING DECIMAL(3.1)
 ,COUNTRY_ID DECIMAL (30)
 , COUNTRY_NAME VARCHAR(30)
 );
 SELECT * FROM PERSONS;
 
 INSERT INTO PERSONS (PERSON_ID,F_NAME,L_NAME,POPULATION,RATING,COUNTRY_ID,COUNTRY_NAME) VALUES
 
 (30,'Linto' ,'Jhon' , 500000 ,2.0 , 1 ,'India'),
 (29, 'Mirchel' ,'Khan' ,400000 ,1.0 , 2 ,null),
 (28, 'Mubarak' ,'Sidhik',450000 ,1.6 , 3 ,'UK'),
(27, 'Siraj' ,'Sahid' ,350000 ,2.7 , 4 , 'USA'),
(26, 'Rhul' ,'Menon' , 250000 ,1.6 , 5 ,'Nigeria'),
(25, 'Namitha' ,'Premodh' ,250000 ,6.5 ,6 ,'Brazil'),
(24, 'Vidhu'  ,'Predhavan' ,355000 ,4.6 , 7 ,null),
(23, 'Nikhil' , 'Sanker' , 450900 ,3.9 , 8 ,'Canada'),
(22, 'Virat' ,'Kholi' , 230900 ,1.4 ,  9 ,null),
(21, 'Rohit' ,'Sharma' ,270000 ,5.9 , 10 , 'Philippines');



SELECT * FROM PERSONS;
 

#(1)List the distinct country names from the Persons table
select distinct COUNTRY_NAME from PERSONS;

#(2)Select first names and last names from the Persons table with aliases.
 select F_NAME AS FIRST_NAME,L_NAME AS LAST_NAME FROM PERSONS;
 
 
#(3) Find all persons with a rating greater than 4.0.
select F_NAME as greater_than_4 from PERSONS where rating>4.0;

#(4)Find countries with a population greater than 10 lakhs
 select COUNTRY_NAME from COUNTRY where POPULATION>1000000;
 
 #(5)Find persons who are from 'USA' or have a rating greater than 4.5.
  select * from PERSONS where COUNTRY_NAME ='USA' or  rating>4.5;

#(6)Find all persons where the country name is NULL
  select * from PERSONS where COUNTRY_NAME IS null;
  
  
 #(7)Find all persons from the countries 'USA', 'Canada', and 'UK'.
 select * from PERSONS where COUNTRY_NAME in('USA','Canada','UK');
 
 #(8)Find all persons not from the countries 'India' and 'Australia'.
  select * from PERSONS where COUNTRY_NAME not in('India','UK');
  
   #(9)Find all countries with a population between 5 lakhs and 20 lakhs.
select COUNTRY_NAME from COUNTRY where POPULATION between 500000 AND 2000000;


#(10)Find all countries whose names do not start with 'C'.
select COUNTRY_NAME from COUNTRY where COUNTRY_NAME not like 'C%';
