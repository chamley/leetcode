with
    t1
    as
    (
                            select *
            from fb_eu_energy
        union all
            select *
            from fb_asia_energy
        union all
            select *
            from fb_na_energy
    ),

    t2
    as
    (
        select t1.date as date, sum(t1.consumption) as tc
        from t1
        group by t1.date
        order by tc desc
    ),

    t3
    as
    (
        select max(t2.tc) as tc
        from t2
    )

select t2.date, t2.tc
from t2 join t3 on t2.tc = t3.tc

