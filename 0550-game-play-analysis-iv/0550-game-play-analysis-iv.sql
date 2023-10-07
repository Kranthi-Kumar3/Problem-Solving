with first_login as 
(
    select player_id, min(event_date) as first_login_date
    from Activity A
    group by 1
),

consec_login as
(
    select count(A.player_id) as num_first_logins
    from first_login f 
    inner join Activity A on f.player_id = A.player_id and f. first_login_date = date_sub(A.event_date, interval 1 day)
)

select
    round((select num_first_logins from consec_login) / (select count(player_id) from first_login), 2) as fraction