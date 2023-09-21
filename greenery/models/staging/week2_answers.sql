with orders as ( select user_id ,count(distinct order_id) 
as user_orders 
from DEV_DB.DBT_ISRRAELMENDOZA92GMAILCOM.STG_ORDERS group by 1 ) , 

users_grouping as( select user_id ,(user_orders = 1 )::int as has_one_purchases ,(user_orders = 2 )::int as has_two_purchases ,(user_orders = 3 )::int as has_three_purchases ,(user_orders >= 2 )::int as has_two_plus_purchases from orders)

select sum(has_two_plus_purchases)/ sum ((has_two_plus_purchases + has_one_purchases)) from users_grouping