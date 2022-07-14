with
    t1
    as
    (
        select hotel_name, average_score
        from hotel_reviews
        group by hotel_name, average_score
        order by average_score
limit 10
)



select hotel_name
    
    , average_score
from hotel_reviews
where average_score in
(select average_score
from t1)
group by hotel_name, average_score
order by average_score