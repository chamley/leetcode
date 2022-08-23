select sunday, count(distinct business_id)
from yelp_business_hours ybh join yelp_business using(business_id) 
where sunday is not null and is_open = 1
group by sunday
order by 2 desc