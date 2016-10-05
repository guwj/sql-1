-- 문자열 함수

select lower('Database Management System') from dual;
select first_name, lower(first_name) from employees;

select upper('Database Management System') from dual;
select last_name, upper(last_name) from employees;

select initcap('database management system') from dual;

select concat( concat(first_name, ' ' ), last_name ) from employees;
select first_name || ' ' || last_name from employees;

select substr( 'Database Management System', 2, 4) from dual;

select length( 'Database Management System' ) from dual;

select instr( 'Database Management System', 'Sys' ) from dual;

select instr( lower( 'Database Management System' ), 'sys' ) from dual;

select employee_id, LPAD(salary, 10, '*') from employees;

select employee_id, RPAD(salary, 10, '*') from employees;

select trim( '#' from '####Data###base####' ) from dual;

select '---' || trim( ' ' from ' Data base             ' ) || '---' from dual;

select '---' || ltrim( ' Data base             ', ' ' ) || '---' from dual;

select '---' || rtrim( '     Data base             ', ' ' ) || '---' from dual;

select replace( 'Database Management System', 'a', 'A') from dual;