with tab1 as
(select d.id, d.name department, e.name employee, e.salary,
    dense_rank() over (partition by d.id order by e.salary desc) as r1
    from department d inner join employee e on d.id=e.departmentid)
select department, employee, salary from tab1 where r1<4;
