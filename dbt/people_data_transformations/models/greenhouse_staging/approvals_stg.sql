{{
    config(
        unique_key=["approval_id", "application_id"]
    )
}}

WITH approvals_source AS (
    SELECT * 
    FROM {{ source('greenhouse_raw', 'approvals') }}
),

approvals_renamed AS (
    SELECT
        id AS approval_id,
        application_id,
        job_id,
        approval_status,
        created_at AS approval_created_at,
        updated_at AS approval_updated_at
    FROM approvals_source
)

SELECT * 
FROM approvals_renamed
