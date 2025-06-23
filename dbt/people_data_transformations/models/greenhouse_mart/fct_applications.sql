{{
    config(
        unique_key=["application_id", "job_id", "candidate_id"]
    )
}}

WITH application_details_source AS (
    SELECT * 
    FROM {{ ref('application_details') }}
),

application_facts AS (
    SELECT 
        application_id,
        job_id,
        candidate_id,
        application_created_at AS application_date,
        candidate_status = 'hired' AS is_hired,
        candidate_status = 'rejected' AS is_rejected,
        approval_status = 'approved' AS is_approved,
        application_status = 'offered' AS was_offered,
        candidate_status = 'active' AS still_active,
        approval_updated_at AS approval_date,
        DATEDIFF('hour', approval_created_at, approval_updated_at) AS hours_to_approval,
        DATEDIFF('hour', application_created_at, approval_updated_at) AS hours_to_decision
    FROM application_details_source
)

SELECT * 
FROM application_facts
