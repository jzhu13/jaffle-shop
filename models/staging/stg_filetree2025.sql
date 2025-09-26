with

events as (

    select * from {{ ref('stg_disco2025') }}

),

select * from events
where tracking_event_type='filetree'