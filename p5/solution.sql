with
    t1
    as
    (
        select at.id, at.user_id,
            at.created_at, at2.created_at
        from amazon_transactions at left join amazon_transactions at2
            on at.user_id=at2.user_id
        where at2.created_at - at.created_at between 0 and 7
            and at.id <> at2.id
        order by at.user_id desc, at.created_at asc
    )


select distinct user_id
from t1