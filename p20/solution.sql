select *, dense_rank() over (order by total_messages desc)

from (

select id_guest, sum(n_messages) total_messages
    from airbnb_contacts
    group by id_guest) t1