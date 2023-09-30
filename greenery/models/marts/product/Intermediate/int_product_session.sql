{{ config(materialized='table') }}

select
    user_id,
    session_id
    {{ events_per_type(ref('stg_events'),'event_type') }}
from {{ ref('stg_events') }}
group by 1,2