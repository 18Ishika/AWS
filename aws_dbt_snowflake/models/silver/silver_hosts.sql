{{ config(
    materialized='incremental',
    unique_key='HOST_ID'
) }}

SELECT
    HOST_ID,
    {{underscore('HOST_NAME')}} AS HOST_NAME,
    HOST_SINCE,
    IS_SUPERHOST,
    {{response('RESPONSE_RATE')}} AS RESPONSE_CATEGORY,
    CREATED_AT
FROM 
    {{ ref('bronze_hosts') }}