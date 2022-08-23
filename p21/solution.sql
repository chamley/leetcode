with
    t1
    as
    (
        select total_checkouts
        from library_usage
        where year_patron_registered = 2010 and patron_type_definition = 'ADULT'
        order by total_checkouts desc
limit 1)

select year_patron_registered
    , home_library_definition, total_checkouts
from library_usage
where year_patron_registered = 2010 and patron_type_definition = 'ADULT' and total_checkouts =
(select *
from t1)