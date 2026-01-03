{{
    config(
        materialized='incremental',
        unique_key='BOOKING_ID'
    )
}}


SELECT 
    BOOKING_ID,
    LISTING_ID,
    BOOKING_DATE,
    (
        {{ multiply('NIGHTS_BOOKED', 'BOOKING_AMOUNT', 2) }}
        + COALESCE(SERVICE_FEE, 0)
        + COALESCE(CLEANING_FEE, 0)
    ) AS TOTAL_AMOUNT,
    CREATED_AT
FROM 
    {{ ref('bronze_bookings') }}

    