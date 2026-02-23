-- 4. Main SQL Commands and Sub-commands(DDL)
-- Lab 2: Use the CREATE command to create a database university_db
-- This command creates a new database named university_db.
create database university_db;
-- This command selects university_db to perform further operations in it.
use university_db;
-- Lab 1: Create a table courses with columns: course_id, course_name, and course_credits. Set the course_id as the primary key.
create table courses (course_id int primary key,course_name varchar(20),course_credits varchar(50));
SELECT * FROM courses;

-- 5. ALTER Command note:ALTER is used to change the structure of a table
-- Lab 1: Modify the courses table by adding a column course_duration using the ALTER command.
-- Adds course_duration column to courses table
alter table course
add column course_duration varchar(30);

-- Lab 2: Drop the course_credits column from the courses table.
-- Deletes the course_duration column from the courses table
alter table course
drop column course_duration;

-- Adds a new column named course_duration to the courses table
alter table courses
add course_duration varchar(20);

-- Removes the course_credits column from the courses table
alter table courses
drop column course_credits;

-- 6. DROP Command
-- Lab 1: Drop the teachers table from the school_db database.
	-- Deletes the teachers table permanently from the database
    drop table teachers;

-- Lab 2: Drop the students table from the school_db database and verify that the table has been removed.
    -- Deletes the students table permanently from the database
    drop table students;
    
-- 7. Data Manipulation Language (DML)-- DML is used to insert, update, delete, and retrieve data from a table.
-- Lab 1: Insert three records into the courses table using the INSERT command.
insert into courses values(1,'BCA','6 months'); 
insert into courses values(2,'MCA','12 months'); 
insert into courses values(3,'MCOM','24 months'); 
insert into courses values(4,'BCOM','24 months'); 
insert into courses values(5,'BSC','12 months'); 


-- Lab 2: Update the course duration of a specific course using the UPDATE command.
update courses
set course_duration ='12 months'
where course_id =1;
select * from courses

-- Lab 3: Delete a course with a specific course_id from the courses table using the DELETE command.
delete from courses
where course_id =5; 

-- 8. Data Query Language (DQL)
-- Lab 1: Retrieve all courses from the courses table using the SELECT statement.
select * from courses

-- Lab 2: Sort the courses based on course_duration in descending order using ORDER BY.
select * from courses order by course_duration ;

-- Lab 3: Limit the results of the SELECT query to show only the top two courses using LIMIT.
select * from courses limit 2;

-- 9. Data Control Language (DCL) note:-- DCL is used to manage database permissions and security.
-- Lab 1: Create two new users user1 and user2 and grant user1 permission to SELECT from the courses table.
create user'user1'@'localhost' identified by 'password1';-- Creates a new user named user1 with password password1
create user 'user2'@'localhost' identified by 'password2';-- Creates a new user named user2 with password password2

-- Lab 2: Revoke the INSERT permission from user1 and give it to user2.
revoke insert on  courses from 'user1'@'localhost'; -- Removes INSERT permission from user1 on courses table
grant insert on courses to 'user2'@'localhost'; -- Gives insert permission to user2 on courses table

-- 10. Transaction Control Language (TCL)
 -- Lab 1: Insert a few rows into the courses table and use COMMIT to save the changes.
 insert into course values
(6, 'testing', 18, 77000, '18 Months');
commit;
select * from course
-- note:Do NOT use COMMIT before ROLLBACK, otherwise undo will not work.
-- Lab 2: Insert additional rows, then use ROLLBACK to undo the last insert operation.
insert into course values (9, 'Cloud Computing', 10, 85000, '10 Months');
select * from course;   -- Row will be visible
rollback;
select * from course;   -- Row will be gone
-- Lab 3: Create a SAVEPOINT before updating the courses table, and use it to roll back specific changes.
-- Starts a transaction, creates a savepoint, updates fees for c_id 10,
--  rolls back the update to the savepoint, and then displays that record.
start transaction; 
savepoint before_update;
update course
set fees = 95000
where c_id = 10;
rollback to before_update;
select * from course where c_id = 10;

-- 11. SQL Joins note: JOIN is used to combine data from multiple tables. 
-- Lab 1: Create two tables: departments and employees. Perform an INNER JOIN to display employees along with their respective departments.
-- INNER JOIN displays only the matching records from both tables based on a common column.
create table departments (dept_id int primary key, dept_name varchar(40))
insert into departments values(1,'HR'),(2,'HR'),(3,'IT'),(4,'IT'),(5,'Finance');
select * from departments 
create table employees(mp_id int primary key,
    emp_name varchar(50),
    salary decimal(10,2),
    dept_id int,
    foreign key(dept_id) references departments(dept_id))
insert into employees values(101, 'Amit', 50000, 2),
(102, 'Neha', 45000, 1),
(103, 'Raj', 60000, 2),
(104, 'Priya', 55000, 3);
select * from employees 
select employees.mp_id,employees.emp_name,employees.salary,departments.dept_name
from employees
inner join departments
on employees.dept_id = departments.dept_id;

-- Lab 2: Use a LEFT JOIN to show all departments, even those without employees,
-- LEFT JOIN displays all records from the left table (employees) and matching
--  records from departments, showing NULL where no match exists.

select employees.mp_id,employees.emp_name,employees.salary,departments.dept_name
from employees
left join departments
on employees.dept_id = departments.dept_id;

-- 12. SQL Group By note:-- GROUP BY is used to group rows with the same values and apply aggregate functions like COUNT, SUM, AVG.
-- ORDER BY is used to sort the result in ascending (ASC) or descending (DESC) order.

-- Lab 1: Group employees by department and count the number of employees in each department using GROUP BY.
-- Groups employees by department and counts total employees in each department.
select departments.dept_name,count(employees.mp_id)as total_employees
from departments 
left join employees
on departments.dept_id= employees.dept_id
group by departments.dept_name;

-- Lab 2: Use the AVG aggregate function to find the average salary of employees in each department.
-- Calculates the average salary of employees in each department.
select d_id,avg(salary) as avg_value
from employee
group by d_id;

-- 13. SQL Stored Procedure note:A Stored Procedure is a pre-written set of SQL statements saved in the database 
-- that can be executed again and again by calling its name.

-- Lab 1: Write a stored procedure to retrieve all employees from the employees table based on department.
delimiter $$
create procedure get_emp_by_dept(in p_dept_id int)
begin
select * from employee
where d_id=p_dept_id;
end $$
call get_emp_by_dept(2);

-- Lab 2: Write a stored procedure that accepts course_id as input and returns the course details
-- Creates a stored procedure that takes course_id as input and returns the details of that course.
delimiter $$
create procedure get_course_details(in p_course_id int)
begin
select c_id,c_name,druration_in_month,fees
from course
where c_id=p_course_id;
end $$
call get_course_details(2);

-- 14. SQL View note:A View is a virtual table created from a SELECT query that shows data from one or more 
-- tables without storing it physically.

-- Lab 1: Create a view to show all employees along with their department names.
create view emp_dept as select emp_name,salary,dept_name
from emplyee1, department1
where emplyee1.dept_id=department1.dept_id;
select * from emp_dept;

-- Lab 2: Modify the view to exclude employees whose salaries are below $50,000. 
-- Creates a view that shows only employees with salary 50000 or more and then displays the view data.
create view emp_view as
select emp_id, emp_name, salary, dept_id
from emplyee1
where salary>=50000;
select * from emp_view 

-- 15. SQL Triggers note:Trigger automatically executes when data is inserted, updated, or deleted in a table.
create table employee_log (log_id int  auto_increment primary key,emp_id int ,action varchar(20),log_time datetime);
-- Lab 1: Create a trigger to automatically log changes to the employees table when a new employee is added.
delimiter $$
create trigger trg_after_employee_insert
after insert
on emplyee1
for each row
begin
	insert into employee_log (emp_id, action, log_time)
    values(new.emp_id, 'INSERT', NOW());
end $$
insert into emplyee1(emp_id, emp_name, salary)
values (202, 'Ravi', 60000);
select * from employee_log;

-- Lab 2: Create a trigger to update the last_modified timestamp whenever an employee record is updated.
delimiter $$
create trigger trg_before_employee_update
before update
on emplyee1
for each row
begin
       set new.last_modified = NOW();
end $$
update emplyee1
set emp_name = 'ravi Updated'
where emp_id = 103;
select emp_id, last_modified,emp_name from emplyee1;

-- 16. Introduction to PL/SQL -- PL/SQL (Procedural Language SQL) is an extension of SQL that allows us to 
-- write procedural code using variables, conditions, loops, and SQL statements inside the database.

-- Lab 1: Write a PL/SQL block to print the total number of employees from the employees table.
-- Procedure is a saved SQL program that runs when we call it.
-- Creates a procedure that counts total employees and displays the result.
delimiter //
create procedure countEmployees()
begin
    declare total_emp int;
    select  count(*) into total_emp
    from employees;
    select concat('Total number of employees: ', total_emp) as message;
end//
call countEmployees();

-- Lab 2: Create a PL/SQL block that calculates the total sales from an orders table.
-- Creates a procedure that calculates total records from orders table and displays the result.
delimiter //
create procedure total_sales()
begin
declare total_sales int;  
select  count(*) into total_sales
    from orders;
   select concat('Total sales from an orders ', total_sales) as message; 
end //
  call total_sales(); 
   
-- 17. PL/SQL Control Structures
-- Lab 1: Write a PL/SQL block using an IF-THEN condition to check the department of an employee.
-- This procedure checks an employee's department using IF-THEN condition and displays a message based on the department name.
delimiter //
create procedure check_employee_department(in p_emp_id int)
begin
    declare  v_dept_name varchar(50);
	select department1.dept_name into v_dept_name
    from employees 
    join department1 
    on employees.dept_id= department1.dept_id
    where employees.mp_id =p_emp_id;
    if v_dept_name ='HR' then
	select 'employee works in HR department' as message;
	elseif v_dept_name = 'IT' then
        select 'employee works in IT department' as message;
    else
        select concat('Employee works in ', v_dept_name, ' Department') as message;
    end if;
end //
 call check_employee_department(102);

-- Lab 2: Use a FOR LOOP to iterate through employee records and display their names.
-- This procedure uses a loop and cursor to fetch and display employee names one by one.
delimiter //
create  procedure list_employee_names()
begin
    declare done int default 0;
    declare v_name varchar(50);
    -- Cursor
	declare emp_cursor cursor for
	select emp_name from employees;
-- Handler when no more rows
declare continue handler for not found set done=1;
    open emp_cursor;
    read_loop: loop
        fetch emp_cursor into v_name;
        if done=1 then
            leave read_loop;
        end if ;
        select v_name as employee_name;
    end loop;
    close emp_cursor;
end //
call list_employee_names();

-- 18. SQL Cursors   note:Cursor is used to handle query results row by row.
-- Lab 1: Write a PL/SQL block using an explicit cursor to retrieve and display employee details.
delimiter //
create procedure show_employee_details()
begin
    declare done int default 0;
    declare v_id int;
    declare v_name varchar(50);
    declare v_salary int;
    -- Declare cursor
     declare emp_cursor cursor for
        select mp_id, emp_name, salary from employees;
    -- Handler when no more rows
	declare continue handler for not found set done=1;
    open emp_cursor;
    read_loop: loop
        fetch emp_cursor into v_id, v_name, v_salary;
        if done = 1 then
            leave read_loop;
        end if;
        select v_id as mp_id,v_name as emp_name,v_salary as Salary;
    end loop;
    close emp_cursor;
end //
call show_employee_details();

-- Lab 2: Create a cursor to retrieve all courses and display them one by one
-- This procedure uses a cursor to fetch all course records one by one and display them using a loop.
delimiter //
create procedure list_courses()
begin
    declare done int default 0;
    declare v_id int;
    declare v_name varchar(100);
    declare v_credits varchar(50);
    -- Cursor to get all courses
    declare course_cursor cursor for
        select c_id, c_name,druration_in_month
        from course;
    -- Handler when no more rows
  	declare continue handler for not found set done=1;
    open course_cursor;
    read_loop: LOOP
        fetch course_cursor into v_id, v_name, v_credits;
        if done = 1 then
            leave read_loop;
        end if;
        select v_id as c_id,v_name as c_name,v_credits as druration_in_month;
    end loop;
    close course_cursor;
end //
call list_courses();

-- 19. Rollback and Commit Savepoint 
-- SAVEPOINT is used to mark a point inside a transaction.
-- ROLLBACK is used to undo changes.
-- COMMIT is used to permanently save changes.

-- Lab 1: Perform a transaction where you create a savepoint, insert records, then rollback to the savepoint.
-- Starts a transaction, creates a savepoint, inserts records, rolls back the last inserts, and commits the remaining changes.
start transaction;
-- Insert first record
insert into employees (mp_id, emp_name, salary)
values (304, 'Asha', 5000);
-- Create savepoint
savepoint sp_emp;
-- Insert more records
insert into employees (mp_id, emp_name, salary)
values (302, 'Rohan', 6000);
insert into employees (mp_id, emp_name, salary)
values(303, 'Meera', 7000);
-- Rollback to savepoint (undo last two inserts)
rollback to sp_emp;
-- Commit the transaction
commit ;
select * from employees;

-- Lab 2: Commit part of a transaction after using a savepoint and then rollback the remaining changes.
-- Inserts records, creates a savepoint, rolls back later changes, and commits only the records before the savepoint.
start transaction;
-- Step 1: Insert first records
insert into students values
(11,'Asha','Ahmedabad','2002-05-10'),
(12,'Ravi','Surat','2001-03-15');
-- Step 2: Create Savepoint
savepoint sp1;
-- Step 3: Insert more records
insert into students values
(13,'Neha','Rajkot','2003-07-21'),
(14,'Karan','Baroda','2002-11-30');
-- Step 4: Rollback only after savepoint
rollback to sp1;
-- Step 5: Commit remaining changes
commit;
select * from students;
