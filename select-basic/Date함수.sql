-- Date

select employee_id, hire_date from employees;


SELECT value 
  FROM nls_session_parameters
 WHERE parameter = 'NLS_DATE_FORMAT';

select ADD_MONTHS( SYSDATE, 2 ) from dual;
select ADD_MONTHS( '16/10/05', 2 ) from dual;

select last_day( SYSDATE ) from dual;

select months_between( ADD_MONTHS( SYSDATE, 2 ), SYSDATE )
  from dual;
  
select employee_id,
       job_id, 
       round(months_between( end_date, start_date ))
  from job_history;	    

--select next_day('01-SEP-95','FRIDAY' ) from dual;

--  1-> SUN, 7-> SAT
select next_day('16/10/05', 7 ) from dual;







  
