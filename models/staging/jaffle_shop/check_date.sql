-- drop view raw.jaffle_shop.my_second_dbt_model;

with dateto as (
    select id,cast(order_date as string) as order_date from raw.jaffle_shop.orders
)

SELECT 
    *
FROM 
    dateto