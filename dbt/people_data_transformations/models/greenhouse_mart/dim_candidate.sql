{{
    config(
        unique_key=["candidate_id"]
    )
}}

WITH application_details_source AS (
    SELECT * 
    FROM {{ ref('application_details') }}
),

candidate_dimensions AS (
    SELECT
        candidate_id,
        candidate_name AS name,
        candidate_email AS email,
        candidate_source AS source
    FROM application_details_source
)

SELECT * 
FROM candidate_dimensions
