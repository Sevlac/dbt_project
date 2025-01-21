with source as (
    select * from {{ source('jaffle_shop', 'raw_orders') }}
),
renamed as (
    select
        id as customer_id,
        customer as customer_name,
        ordered_at as order_date,
        store_id
    from source
)
select * from renamed