with
    denominator
    as
    (
        select date
, count(*) as total_sent
        from fb_friend_requests
        where action = 'sent'
        group by date
    )
,
    sent
    as
    (
        select *
        from fb_friend_requests
        where action = 'sent'
    )
,
    accepted
    as
    (
        select *
        from fb_friend_requests
        where action = 'accepted'
    )
,
    numerator
    as
    (
        select sent.date, count(*) as positives
        from sent left join accepted
            on sent.user_id_sender = accepted.user_id_sender
        where sent.action = 'sent' and accepted.action = 'accepted'
        group by sent.date
    )

select
    d.date as date
, n.positives/cast(d.total_sent as float) as percentage_acceptance

from denominator d join numerator n on d.date=n.date