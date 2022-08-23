-- select * from playbook_events

select pe.user_id, event_name, count(*) as number_of_events, avg(occurred_at::date-activated_at)
from playbook_events pe join playbook_users pu using(user_id)
group by 1,2