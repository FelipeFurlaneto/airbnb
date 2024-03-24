{{
    config(
        materialized="ephemeral"
    )
}}

with src_hosts as
(
    select * from AIRBNB.RAW.RAW_HOSTS
)

select
    ID as host_id
    ,name as host_name
    ,is_superhost
    ,created_at
    ,updated_at
from src_hosts