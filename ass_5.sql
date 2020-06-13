/*create table employee_audit (
empid number primary key,
old_salary number, 
new_salary number,
updation_date date);

create or replace trigger audit_sal
after update of salary on employee
for each row 
begin
insert into employee_audit values (:old.empid, :old.salary, :new.salary, sysdate);
end;

update employee set salary = 30000 where empid = 103;

select *from employee_audit;*/
/*
create or replace trigger not_allowed_operation
before insert or update or delete on employee 
begin
if to_char(sysdate, 'dy') = 'sat' or to_char(sysdate, 'dy') = 'sun' or
   to_number(sysdate, 'HH24') < 10 or to_number(sysdate, 'HH24') > 17 then
raise_application_error(-20112, 'Invalid operation on employee table');
else dbms_output.put_line('Welcome!!!');
end if;
end;

update employee set salary = 30000 where empid = 103;*/
/*
create or replace trigger display_mark_changes 
before update of marks on student 
for each row
begin 
dbms_output.put_line('Old Marks:' || :old.marks);
dbms_output.put_line('New Marks:' || :new.marks);
end;

update student set marks = 120 where st_id = 1;*/

/*drop trigger not_allowed_operation;*/
/*drop trigger audit_sal;*/
/*drop trigger calc_commission;*/

create or replace trigger calc_commission
before update of salary on employee
for each row 
declare new_commission number; old_commission number;
begin
if :old.designation = 'Analyst' or :old.designation = 'Salesman' then 
old_commission := 0.20 * :old.salary;
new_commission := 0.20 * :new.salary;
end if;
if old_commission < 1000 then new_commission := new_commission + 1000;
else new_commission := new_commission + 2000;
end if;
dbms_output.put_line('Old Commission:' || old_commission);
dbms_output.put_line('New Commission:' || new_commission);
end;

update employee set salary = 800 where empid = 104;
