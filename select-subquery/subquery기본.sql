-- subquery

select * from employees;

-- 문) 이름(first_name)이 Lex 사원 보다 월급이 많은 직원들 이름과 월급
-- select salary from employees where first_name = 'Lex';
--select first_name, salary from employees where salary > 17000; 
select first_name,
       salary
  from employees
 where salary > ( select salary from employees where first_name = 'Lex');
