{{ config(materialized='view') }}

select distinct
    eve.session_id as session_id,
    oitem.product_id as product_id,
    prod.name as product_name
from {{ ref('stg_events') }} as eve
left join {{ ref('stg_order_items') }} as oitem
    on eve.order_id = oitem.order_id
left join {{ ref('stg_products') }} as prod
    on oitem.product_id = prod.product_id
where eve.event_type = 'checkout'