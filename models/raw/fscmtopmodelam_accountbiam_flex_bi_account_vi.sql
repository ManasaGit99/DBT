{{
    config(
        materialized="table",
        full_refresh=True,
    )
}}

select *
from {{ source("bicc", "fscmtopmodelam_accountbiam_flex_bi_account_vi") }}
