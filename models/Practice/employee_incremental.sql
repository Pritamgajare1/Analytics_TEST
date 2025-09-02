{{ config(
    materialized='incremental',
    unique_key='id'
) }}

select
    id,
    first_name,
    last_name,
    gender,
    city,
    jobtitle,
    salary
from {{ source('emp_schema', 'employee') }}