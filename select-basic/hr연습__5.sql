  select employee_id, department_id, salary
    from employees
order by department_id asc;

  select employee_id, department_id, salary
    from employees
order by department_id asc, salary desc;