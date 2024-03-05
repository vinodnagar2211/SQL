

create database school;

use school;

create table STUDENT( Stu_id  int primary key auto_increment, 
Stu_Name varchar(50)  , 
Stu_Addr varchar (50) ,
Stu_Email varchar (50) ) ;  




create table  AUTHOR ( Author_id  int primary key not null  auto_increment, 
Author_Name varchar(50)  , 
Author_Addr varchar (50) ,
Author_Email varchar (50)  ) ; 

create table PUBLISHER ( Pub_id int not null primary key auto_increment, 
Pub_Name varchar (50)  , 
Pub_Addr varchar(54) ,
Pub_Email varchar (60) );


create table EMPLOYEE ( Emp_id int  primary key auto_increment, 
Emp_Name varchar (50)  , 
Emp_Addr varchar(54) ,
Emp_Email varchar (60) );


create table BOOK (
    book_id int primary key ,
    book_name varchar(50) ,
    noofpages int  , 
    isbnnum varchar(20) , 
    stu_id int  , 
    emp_id int  , 
    pub_id int ,
    --         col_name          Table_name(Col_name)
    foreign key (stu_id) references student(stu_id), 
    foreign key (emp_id) references employee(emp_id), 
    foreign key (pub_id) references publisher(pub_id)
    ); 
    	
create table BOOK_AUTH (
    book_auth_id int primary key, 
    book_id int, 
    author_id int,
    foreign key  (book_id) references    book(book_id),
    foreign key  (author_id) references    author(author_id));
  



 DESC employee;
 desc book;
 desc publisher;
 desc book_auth;
 
 
 
 
  

  