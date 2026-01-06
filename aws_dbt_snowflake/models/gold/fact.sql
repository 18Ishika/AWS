{{ config(
    materialized='table'
) }}

SELECT DISTINCT
    BOOKING_ID, 
    LISTING_ID,
    HOST_ID,
    TOTAL_AMOUNT,
    ACCOMMODATES,
    BATHROOMS,
    BEDROOMS
FROM {{ ref('obt') }}

