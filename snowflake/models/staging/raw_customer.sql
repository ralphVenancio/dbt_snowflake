
with source_data as (
    select * from {{ source('db_test', 'RAW_CUSTOMERS') }}
)

select
    id as customer_id,
    first_name as customer_first_name,
    last_name as customer_last_name,
    email as customer_email,
    created_at as customer_created_at,
    updated_at as customer_updated_at
from source_data