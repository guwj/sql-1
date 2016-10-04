-- NULL test

select employee_id, salary, commission_pct from employees;

select employee_id, salary, commission_pct, salary + commission_pct *salary from employees;

select employee_id, salary, commission_pct, salary + nvl(commission_pct, 0)*salary from employees;

select nvl( 20, 10 ) from dual;

-- nvl 함수
select employee_id, nvl(manager_id, 0) from employees;