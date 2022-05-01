select distinct t1.user_id
from twitch_sessions t1 join twitch_sessions t2
    on t1.user_id = t2.user_id

where t1.session_type != t2.session_type