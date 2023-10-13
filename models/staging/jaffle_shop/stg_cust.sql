    {{ config(
    database=var("shop_db","shop_in"),
    schema=generate_schema_name(var("shop_schema","jaffle_in_shop")),
    materialized='incremental',
    incremental_strategy='delete+insert' 
    ) }}
    

select * from {{source('jaffle_shop','customers')}} order by id