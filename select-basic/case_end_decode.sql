-- case~end
select job_id from employees;
select distinct job_id from employees;

SELECT employee_id,
       salary,
	   CASE job_id
	   		WHEN 'AC_ACCOUNT' THEN salary + salary*0.1
	   		WHEN 'AC_MGR' THEN salary + salary*0.2
	   		WHEN 'AD_VP' THEN salary + salary*0.5
			ELSE salary
	   END as "이번달 급여"
  FROM employees;

-- decode  
SELECT employee_id,
       salary,
	   DECODE( job_id,'AC_ACCOUNT', salary + salary*0.1,
	   				  'AC_MGR',     salary + salary*0.2,
	   		          'AD_VP',      salary + salary*0.5,
			                        salary ) as "이번달 급여"
  FROM employees;   	   
	   
	   