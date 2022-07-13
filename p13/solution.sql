

with t1 as (select * from billboard_top_100_year_end
where year = 2010 and year_rank<11)


select year_rank as rank,
group_name,
song_name
from t1
group by year_rank, group_name, song_name order by year_rank asc
