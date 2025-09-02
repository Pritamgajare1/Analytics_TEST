select *
from {{ ref('employee_ephemeral') }}
where salary_num > 50000