-- inner join(equi-join)
select a.employee_id,
       a.department_id, 
	   b.department_name
  from employees a,
       departments b
 where a.department_id = b.department_id -- join 조건
   and a.salary > 5000;                  -- row 선택 조건
   
-- outer join
select count(*)
  from employees a,
       departments b
 where a.department_id = b.department_id;	   

select count(*)
  from employees a,
       departments b
 where a.department_id (+)= b.department_id;	   

select nvl(a.first_name, '소속 사원이 없음'), b.department_name
  from employees a,
       departments b
 where a.department_id (+)= b.department_id;
 
 
-- self join

select emp.first_name, man.first_name
  from employees emp, employees man
 where emp.manager_id = man.employee_id;  	   

select emp.first_name, nvl(man.first_name, 'none manager')
  from employees emp, employees man
 where man.employee_id (+)= emp.manager_id;  	   
  
  
  
  
     