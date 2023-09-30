--Q1 Part 1
with events as (
select
count(case when total_checkout > 0 then session_id else null end) as checkout_sessions
,count(session_id) as total_sessions 
from DEV_DB.DBT_ISRRAELMENDOZA92GMAILCOM.INT_PRODUCT_SESSION)
select
(checkout_sessions / total_sessions)*100 as overall_conversion_rate
from events*/

--Q1 Part 2
select 
* 
from 
DEV_DB.DBT_ISRRAELMENDOZA92GMAILCOM.DIM_PROD_CONVERT