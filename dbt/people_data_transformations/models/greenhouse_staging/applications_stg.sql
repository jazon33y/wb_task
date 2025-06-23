{{
    config(
        unique_key=["application_id", "candidate_id"]
    )
}}

WITH applications_source AS (
    SELECT * 
    FROM {{ source('greenhouse_raw', 'applications') }}
),

applications_renamed AS (
    SELECT
        id AS application_id,
        candidate_id,
        job_id,
        job_title,
        status AS application_status,
        source AS application_source,
        created_at AS application_created_at
    FROM applications_source
)

SELECT * 
FROM applications_renamed
