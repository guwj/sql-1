-- 산술 연산자

select 100 * 10 from dual;

select employee_id, salary as "본봉", salary + salary * 0.3 as "보너스
" from employees;

select -salary from employees;
