{{ config(materialized='ephemeral') }}

SELECT
    HOST_ID,
    HOST_NAME,
    HOST_SINCE,
    IS_SUPERHOST,
    RESPONSE_CATEGORY,
    HOST_CREATED_AT

FROM {{ ref('obt') }}
