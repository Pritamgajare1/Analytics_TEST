{{ config(materialized='ephemeral') }}

select
    id,
    first_name,
    last_name,
    -- remove $ and commas, then cast to number
    cast(regexp_replace(salary, '[\$,]', '') as number(18,2)) as salary_num
from {{ source('emp_schema', 'employee') }}