{{ config(materialized='table')}}

with consumer as (
    select last_name, source_id, deliver_addresses, first_name
    from project_b79ec5a18f70480b83dcc0d656b2d3d8.consumer
),


final as (
    select lower(last_name) as last_name, source_id, deliver_addresses, first_name
    from consumer
)

select * from final


