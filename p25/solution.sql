select nominee,
    count(case when winner = True then 1
    else null end)*1.0/count(*) as rate
from oscar_nominees
group by nominee
order by 2 desc