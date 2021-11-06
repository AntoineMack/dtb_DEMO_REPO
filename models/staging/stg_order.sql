with orders as ( select * from {{ source('subscription', 'order') }} )

select *
from orders