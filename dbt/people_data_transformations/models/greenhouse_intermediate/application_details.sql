WITH applications_source AS (
    SELECT * FROM {{ ref('applications_stg') }}
),

candidates_source AS (
    SELECT * FROM {{ ref('candidates_stg') }}
),

approvals_source AS (
    SELECT * FROM {{ ref('approvals_stg') }}
),

application_details AS (
    SELECT 
        c.candidate_id,
        a.job_id,
        r.approval_id,
        a.application_id,
        a.application_source,
        c.candidate_name,
        c.candidate_source,
        c.candidate_email,
        a.job_title,
        c.candidate_created_at, 
        a.application_created_at,
        r.approval_created_at,
        r.approval_updated_at,
        c.candidate_status,
        a.application_status,
        r.approval_status
    FROM applications_source AS a
    LEFT JOIN candidates_source AS c
        ON a.candidate_id = c.candidate_id
    LEFT JOIN approvals_source AS r
        ON a.application_id = r.application_id
        AND a.job_id = r.job_id
)

SELECT * FROM application_details
