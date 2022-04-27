with
    t1
    as
    (
        select id, max(salary) as max
        from ms_employee_salary
        group by id
    )


select *
from ms_employee_salary ms join t1
    on ms.id = t1.id and ms.salary=t1.max
order by t1.id asc
