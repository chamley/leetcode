select user_id, language, location
from playbook_experiments pe join playbook_users pu  using(user_id)
where language != 'italian' and device = 'nexus 5' and location = 'Italy' AND experiment_group = 'control_group'
order by pe.occurred_at
