/*create table student(
St_ID number,
FirstName varchar2(20),
LastName varchar2(20));

insert into student values (1, 'Priyank', 'Hajela');
insert into student values (2, 'Jai', 'Kaushil');
insert into student values (3, 'John', 'Doe');

select *from student;*/

/*declare
  fname varchar2(20);
  lname varchar2(20);
begin
  select FirstName, LastName into fname, lname from student 
  where St_ID=1;
  dbms_output.put_line('Student Name:' || fname || ' ' || lname);
end;*/

/*declare
today varchar2(20);
begin
today := to_char(sysdate, 'day');
dbms_output.put_line('Today is:' || today);
end;*/

/*declare 
check_num number := :check_num;
begin
if mod(check_num, 2) = 0 then 
dbms_output.put_line('The number ' || check_num || ' is even');
else dbms_output.put_line('The number ' || check_num || ' is odd');
end if;
end;*/

/*declare
counter number := 10;
begin
loop
dbms_output.put_line(counter);
counter := counter - 1;
exit when counter < 5;
end loop;
end;*/

/*declare
counter number := 10;
begin
while counter >= 5 loop
dbms_output.put_line(counter);
counter := counter - 1;
end loop;
end;*/

declare
factorial number := 1;
num_fact number := :num_fact;
begin
for counter in 1..num_fact loop
factorial := factorial * counter;
end loop;
dbms_output.put_line('The factorial of ' || num_fact || ' is ' || factorial);
end;








