select reviewer_nationality, count(*)
from hotel_reviews
where positive_review != 'No Positive'
group by 1
order by 2 desc