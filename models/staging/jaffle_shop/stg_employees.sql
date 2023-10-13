
{{ config(
    database=var("shop_db","shop_in"),
    schema=generate_schema_name(var("shop_schema","jaffle_in_shop")) 
    ) }}

select * from {{ref('employees')}}