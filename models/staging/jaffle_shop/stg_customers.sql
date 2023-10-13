    {{ config(
    database=var("shop_db","shop_in"),
    schema=generate_schema_name(var("shop_schema","jaffle_in_shop")) 
    ) }}
    
    with customers as (
        select
        id as customer_id,
        first_name,
        last_name

    from {{ source('jaffle_shop','customers') }}
    ),
    employees as (
        select * from {{ ref('employees') }}
    )
    select 
    employees.customer_id,
        customers.first_name,
        customers.last_name,
       COALESCE(employees.employee_id, 0) AS employee_id,
    COALESCE(employees.email, 'no email') AS email
     from customers left join employees using(customer_id)


