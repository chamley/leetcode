select
    sum(case
    when is_low_fat = 'Y'
        and is_recyclable = 'Y' then 1
    else 0
end)/count(*)
::float*100
from facebook_products