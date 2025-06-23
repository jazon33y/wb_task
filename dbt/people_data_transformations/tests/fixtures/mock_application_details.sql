-- tests/fixtures/mock_application_details.sql
SELECT
    1 AS application_id,
    101 AS job_id,
    'Data Analyst' AS job_title,
    201 AS candidate_id,
    'John Doe' AS candidate_name,
    'john.doe@example.com' AS candidate_email,
    'Referral' AS candidate_source,
    'active' AS candidate_status,
    'offered' AS application_status,
    'approved' AS approval_status,
    '2023-10-26 10:00:00'::timestamp AS application_created_at,
    '2023-10-26 11:00:00'::timestamp AS approval_created_at,
    '2023-10-26 12:00:00'::timestamp AS approval_updated_at
UNION ALL
SELECT
    2 AS application_id,
    102 AS job_id,
    'Software Engineer' AS job_title,
    202 AS candidate_id,
    'Jane Smith' AS candidate_name,
    'jane.smith@example.com' AS candidate_email,
    'Job Board' AS candidate_source,
    'hired' AS candidate_status,
    'hired' AS application_status,
    'approved' AS approval_status,
    '2023-10-25 09:00:00'::timestamp AS application_created_at,
    '2023-10-25 10:00:00'::timestamp AS approval_created_at,
    '2023-10-25 11:00:00'::timestamp AS approval_updated_at
UNION ALL
SELECT
    3 AS application_id,
    101 AS job_id,
    'Data Analyst' AS job_title,
    203 AS candidate_id,
    'Peter Jones' AS candidate_name,
    'peter.jones@example.com' AS candidate_email,
    'Agency' AS candidate_source,
    'rejected' AS candidate_status,
    'rejected' AS application_status,
    'rejected' AS approval_status,
    '2023-10-24 14:00:00'::timestamp AS application_created_at,
    '2023-10-24 15:00:00'::timestamp AS approval_created_at,
    '2023-10-24 16:00:00'::timestamp AS approval_updated_at