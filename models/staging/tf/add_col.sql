with source as (
    select * from raw.tf.dummy_tf
),
creates as (
    select *,
        NULL::integer AS id
    from source
),
maxs as (
    select max(id) as m
    from creates
),
final as (
    select
        max(id) as m,
        {{ ids('m') }} as s_no
        
    from creates
),
result as (
    select
    final.s_no,
    creates.table_name
    from
    creates,final
)

select * from result
