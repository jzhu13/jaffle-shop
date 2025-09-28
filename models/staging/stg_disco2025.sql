with

source as (

    select * from {{ source('ecom', 'raw_disco_data') }}

),

renamed as (

    select
        ingested_at as ingest_time,
        event_type as tracking_event_type

    from source

)

select * from renamed
