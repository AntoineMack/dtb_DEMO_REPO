with order_product as ( select * from {{ source('subscription', 'order_product') }} )

select cast(Id as number) as id, order_id as order_id, product_id,
    cast(quantity_change as number) as quantity_change
from order_product
where deleted_at is NULL