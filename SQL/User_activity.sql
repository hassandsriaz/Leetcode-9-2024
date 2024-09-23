-- Rutime: 471ms | Beats: 62.26% (Depending on Connection) 
select activity_date as day, count(distinct user_id) as active_users from activity
 where datediff('2019-07-27',activity_date ) < 30 
 and activity_date <= '2019-07-27'
 group by activity_date;