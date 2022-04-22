with
    t1
    as
    (
        select dd.department, max(salary)
        from db_employee de join db_dept dd
            on de.department_id = dd.id
        where department='marketing'
        group by dd.department
    ),
    t2
    as
    (
        select dd.department, max(salary)
        from db_employee de join db_dept dd
            on de.department_id = dd.id
        where department='engineering'
        group by dd.department
    )

select abs((select t1.max
    from t1) - (select t2.max
    from t2)) as salary_difference