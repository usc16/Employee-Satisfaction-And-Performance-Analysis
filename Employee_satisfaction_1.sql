select e.employee_id,concat(e.first_name,' ',e.last_name),d.department_name,e.department_id,d.department_id
from employees e join departments d on e.department_id=d.department_id where d.department_name='IT';
select * from employees;
select * from departments;
select * from job_history;
select * from jobs where max_salary is null;
use hr;

select * from employees where job_id is null;

select e.employee_id,e.first_name,j.job_id,j.job_title,j.min_salary,j.max_salary 
from employees e join jobs j on e.job_id=j.job_id;


select * from locations;

select distinct d.location_id from employees e join departments d on e.department_id=d.department_id;

select count(e.employee_id),l.city from employees e join departments d on d.department_id=e.department_id
join locations l on l.location_id=d.location_id group by l.city order by count(e.employee_id) desc;



select * from job_history;

select e.employee_id,concat(e.first_name,' ',e.last_name) from employees e join job_history j on e.employee_id=j.employee_id
where j.end_date='1999-12-31';

select count(*) from job_history;
select distinct employee_id from job_history order by employee_id;


select e.employee_id,concat(e.first_name,' ',e.last_name) as full_name,d.department_name from employees e
join departments d on e.department_id=d.department_id;

select d.department_name,x.employee_id,concat(x.first_name,' ',x.last_name) as full_name,x.exp_e from
(select e.*,(year(current_date())-year(e.hire_date)) as exp_e from employees as e where employee_id not in 
(select distinct j.employee_id from job_history j) and (year(current_date())-year(e.hire_date))>=25) as x
join departments d on x.department_id=d.department_id;

select year(current_date())-year(e.hire_date) from employees e;

select e.*,(year(current_date())-year(e.hire_date)) as exp_e from employees as e where employee_id not in 
(select distinct j.employee_id from job_history j) and (year(current_date())-year(e.hire_date))>=25;

select distinct j.employee_id from job_history j;





















