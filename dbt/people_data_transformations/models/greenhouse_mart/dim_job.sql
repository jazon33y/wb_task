{{
    config(
        unique_key=["application_id", "job_id"]
    )
}}

WITH application_details_source AS (
    SELECT * 
    FROM {{ ref('application_details') }}
),

job_dimensions AS (
    SELECT DISTINCT
        application_id, -- need application id because job ids are not unique to job title...
        job_id,
        job_title
    FROM application_details_source
)

SELECT * 
FROM job_dimensions
