/*function for sum of 1st 100 even nos./*/
/*create or replace function sumofeven
return number is
sum_result number := 0;
begin 
for i in 1..100 loop
if mod(i,2) = 0 then 
sum_result := sum_result + i;
end if;
end loop;
return sum_result;
end;*/

/*calling the function*/
/*declare sresult number;
begin sresult := sumofeven();
dbms_output.put_line('The sum first 100 even nos. is:' || sresult);
end;*/

/* 1 - prime | 0 - non-prime */
/*create or replace function prime(n number)
return number is presult number := 1; 
i number := 2;	
begin
for i in 2..n/2 loop 
    if mod(n, i) = 0 
    then
        presult := 0; 
        exit; 
    end if; 
end loop; 
return presult;
end;*/

/*declare
n number := &n;			 
temp number;		 	
begin
temp := prime(n); 
if temp = 1 then
    dbms_output.put_line(n || ' is a prime number'); 
else
    dbms_output.put_line(n || ' is a composite number'); 
end if; 	
end;*/	

/*select *from employee;
select max(salary) from employee;
select fname from employee where salary = (select max(salary) from employee);*/

create or replace function highest_salary
return varchar2 is emp_name varchar2(20);
begin
select fname into emp_name from employee where salary = (select max(salary) from employee);
return emp_name;
end;

declare emp_name varchar2(20);
begin
emp_name := highest_salary();
dbms_output.put_line(emp_name || ' earns highest salary.');
end;

