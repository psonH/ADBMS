/*declare
cus_name varchar(20);
cus_add varchar(30);
cus_id number := 0;
id_exception exception;
begin
if cus_id <= 0 then
raise id_exception;
end if;
select name, address into cus_name, cus_add from customers where customerid=cus_id;
dbms_output.put_line('Name of Customer:' || cus_name);
dbms_output.put_line('Address of Customer:' || cus_add);
exception
when id_exception then
dbms_output.put_line('Id must be greater than 0');
end;*/

/*declare
rec_area decimal(7,2) := 100;
rec_breadth decimal(7,2) := 0;
rec_leng decimal;
begin
rec_leng := rec_area / rec_breadth;
dbms_output.put_line('The length of the rectangle:' || rec_leng);
exception
when zero_divide then
dbms_output.put_line('The breadth cannot be <= to zero');
end;*/

/*select *from student;*/

/*declare
fname varchar(20);
lname varchar(20);
begin
select firstname, lastname into fname, lname from student where marks > 100;
dbms_output.put_line('The student name is:' || fname || ' ' || lname);
exception
when too_many_rows then
dbms_output.put_line('Only 1 record required. More than 1 retured.');
end;*/

/*select *from employee;*/
declare 
emp_id number := &emp_id;
emp_sal number;
no_sal_exception exception;
PRAGMA exception_init(no_sal_exception, -20101);
begin
select salary into emp_sal from employee where empid = emp_id;
if emp_sal is null then raise_application_error(-20101, 'Salary is missing'); 
end if;
dbms_output.put_line('Old Salary:' || emp_sal);
update employee set salary = emp_sal + 0.10 * emp_sal where empid = emp_id;
select salary into emp_sal from employee where empid = emp_id;
dbms_output.put_line('Updated Salary:' || emp_sal);
exception
when no_data_found then 
dbms_output.put_line('No such employee exists');
end;










