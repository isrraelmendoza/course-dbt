{{ config(materialized='table') }}

select PRODUCT_ID, NAME, PRICE, INVENTORY FROM {{ ref('stg_products') }}