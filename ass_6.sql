/*declare cursor list_employees is 
select fname, designation, salary from employee where salary > 20000;
emp_name employee.fname%type;
emp_designation employee.designation%type;
emp_sal employee.salary%type;
begin
open list_employees;
loop fetch list_employees into emp_name, emp_designation, emp_sal;
exit when list_employees%notfound;
dbms_output.put_line(emp_name || ',' ||  emp_designation || ',' || emp_sal);
end loop;
close list_employees;
end;*/

/*declare cursor exp_employees is 
select fname, designation from employee where experience > 35;
emp_name employee.fname%type;
emp_designation employee.designation%type;
begin
open exp_employees;
loop fetch exp_employees into emp_name, emp_designation;
exit when exp_employees%notfound;
dbms_output.put_line(emp_name || ',' ||  emp_designation);
end loop;
close exp_employees;
end;*/

/*declare cursor count_employees is 
select count(*) from employee;
emp_count number;
begin
open count_employees;
loop fetch count_employees into emp_count;
exit when count_employees%notfound;
dbms_output.put_line('Total no. of employees are:' || emp_count);
end loop;
close count_employees;
end;*/

declare cursor increase_salary is 
select fname, salary from employee where dno = 4;
emp_name employee.fname%type;
inc_emp_salary employee.salary%type;
org_emp_salary employee.salary%type;
begin
open increase_salary;
loop fetch increase_salary into emp_name, org_emp_salary;
exit when increase_salary%notfound;
inc_emp_salary := org_emp_salary + 1000;
dbms_output.put_line('Old and Increased salary of ' || emp_name || ' is ' || 
org_emp_salary || ',' || inc_emp_salary || ' respectively');
end loop;
close increase_salary;
end;
