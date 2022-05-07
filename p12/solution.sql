with
    t1
    as
    (
        select user_id, count(*)
        from fb_searches
        where date<'2021-09-01' and date >='2021-08-01'
        group by user_id
        having count(*)>5
    )


select count(*)
from t1
