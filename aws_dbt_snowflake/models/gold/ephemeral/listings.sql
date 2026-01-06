{{ config(materialized='ephemeral') }}

SELECT
    LISTING_ID,
    PROPERTY_TYPE,
    ROOM_TYPE,
    CITY,
    PRICE_CATEGORY,
    LISTING_CREATED_AT


FROM {{ ref('obt') }}
