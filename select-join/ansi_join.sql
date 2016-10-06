-- ansi join sql문 (1999 syntax) 

-- natural join 테이블의 갈럼이름이 같은 경우에만...
      select count(*) ---a.first_name, b.department_name
        from employees a
natural join departments b;
	
select count(*) ---a.first_name, b.department_name
  from employees a
  join departments b
using (department_id);

-- inner join 표준 SQL문	   	
select count(*) ---a.first_name, b.department_name
  from employees a
  join departments b
    on a.department_id = b.department_id;
		
-- outer join 표준 SQL문

          select count(*)
            from employees a
right outer join departments b
              on a.department_id = b.department_id;
			  
          select count(*)
            from departments b
 left outer join employees a
              on a.department_id = b.department_id;			  