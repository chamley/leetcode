select stars, count(stars)
from yelp_reviews
where business_name like 'Lo-Lo%'
group by stars
order by stars