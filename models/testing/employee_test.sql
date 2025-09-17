{{ config(materialized="incremental", unique_key="emp_id",tags=["employee_department_pipeline"]
) }}

select *
from {{ source("bic", "employee")  }}