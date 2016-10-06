--문)각부서별로  최고 연봉을 받는 직원의 이름과 연봉을 출력

 select employee_id, salary
   from employees
  where (department_id, salary) in (   select department_id, max(salary)
                                         from employees
                                     group by department_id ); 

select a.first_name, a.salary
  from employees a,
       (   select department_id,
	              max(salary) as max_salary
             from employees
         group by department_id ) b
 where a.department_id = b.department_id
   and a.salary = b.max_salary;
   
select a.first_name, a.salary
  from employees a
 where salary = ( select max(salary)
                    from employees
				   where department_id = a.department_id );	 
 
 
 
 
 
      		 
		 