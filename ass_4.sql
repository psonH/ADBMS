/*create or replace procedure student_name
(s_id in number,
fname out varchar2,
lname out varchar2)
as begin
select firstname, lastname into fname, lname from student where st_id = s_id;
end;

declare local_fname varchar2(50); local_lname varchar2(50);
begin student_name(1, local_fname, local_lname);
dbms_output.put_line('The student name is ' || local_fname || ' ' || local_lname);
end;*/

/*create or replace procedure square(n in out number)
as begin
n := n * n;
end;

declare n number := &n; org_num number;
begin 
org_num := n;
square(n);
dbms_output.put_line('The square of ' || org_num || ' is ' || n);
end;*/

/*create or replace procedure minimum_num
(n1 in number,
n2 in number,
min_num out number) as
begin
if n1 < n2 then min_num := n1; else min_num := n2; end if;
end;

declare n1 number := &n1; n2 number := &n2; min_num number;
begin minimum_num(n1, n2, min_num);
dbms_output.put_line('The min. num. b/w ' || n1 || ' and ' || n2 || ' is ' || min_num);
end;*/

/*select *from employee;*/

create or replace procedure remove_emp(emp_id in number, total_emp out number)
as begin
delete from employee where empid = emp_id;
select count(*) into total_emp from employee;
end;

declare total_emp number; emp_id number := &emp_id;  
begin
select count(*) into total_emp from employee;
dbms_output.put_line('The total employees before deletion is:' || total_emp);
remove_emp(emp_id, total_emp);
dbms_output.put_line('The total employees after deletion is:' || total_emp);
end;







