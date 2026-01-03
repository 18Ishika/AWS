{{
  config(
    materialized = 'incremental',
    unique_key = 'LISTING_ID'
    )
}}

SELECT 
    LISTING_ID,
    HOST_ID,
    PROPERTY_TYPE,
    ROOM_TYPE,
    CITY,
    ACCOMMODATES,
    BEDROOMS,
    BATHROOMS,
    {{ tag('PRICE_PER_NIGHT') }} AS PRICE_CATEGORY,
    CREATED_AT
FROM 
    {{ ref('bronze_listings') }}