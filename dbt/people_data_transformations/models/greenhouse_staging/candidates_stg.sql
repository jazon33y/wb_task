{{
    config(
        unique_key=["candidate_id"]
    )
}}

WITH candidates_source AS (
    SELECT * 
    FROM {{ source('greenhouse_raw', 'candidates') }}
),

candidates_renamed AS (
    SELECT
        id AS candidate_id,
        created_at AS candidate_created_at,
        name AS candidate_name,
        status AS candidate_status,
        source AS candidate_source,
        email AS candidate_email
    FROM candidates_source
)

SELECT * 
FROM candidates_renamed
