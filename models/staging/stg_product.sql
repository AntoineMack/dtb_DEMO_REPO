with product as ( select * from {{ source('subscription', 'product') }} )

select Id as id, name, unit,
    CAST(replace(unit_rate,',','') as number) as unit_rate, type,
    unit_timing, 
    CASE WHEN status = 'Activ' THEN 'Active' ELSE status END as status
from product
where deleted_at is NULL and status != 'Archived'