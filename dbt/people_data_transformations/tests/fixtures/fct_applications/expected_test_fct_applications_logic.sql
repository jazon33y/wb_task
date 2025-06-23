-- tests/fixtures/expected_fct_applications.sql
SELECT
    1 AS application_id,
    101 AS job_id,
    201 AS candidate_id,
    '2023-10-26 10:00:00'::timestamp AS application_date,
    false AS is_hired,
    false AS is_rejected,
    true AS is_approved,
    true AS was_offered,
    true AS still_active,
    '2023-10-26 12:00:00'::timestamp AS approval_date,
    1 AS hours_to_approval,
    2 AS hours_to_decision
UNION ALL
SELECT
    2 AS application_id,
    102 AS job_id,
    202 AS candidate_id,
    '2023-10-25 09:00:00'::timestamp AS application_date,
    true AS is_hired,
    false AS is_rejected,
    true AS is_approved,
    false AS was_offered,
    false AS still_active,
    '2023-10-25 11:00:00'::timestamp AS approval_date,
    1 AS hours_to_approval,
    2 AS hours_to_decision
UNION ALL
SELECT
    3 AS application_id,
    101 AS job_id,
    203 AS candidate_id,
    '2023-10-24 14:00:00'::timestamp AS application_date,
    false AS is_hired,
    true AS is_rejected,
    false AS is_approved,
    false AS was_offered,
    false AS still_active,
    '2023-10-24 16:00:00'::timestamp AS approval_date,
    1 AS hours_to_approval,
    2 AS hours_to_decision