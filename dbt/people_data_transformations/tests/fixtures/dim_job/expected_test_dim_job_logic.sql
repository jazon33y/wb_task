-- tests/fixtures/expected_dim_job.sql
SELECT
    1 AS application_id,
    101 AS job_id,
    'Data Analyst' AS job_title
UNION ALL
SELECT
    2 AS application_id,
    102 AS job_id,
    'Software Engineer' AS job_title
UNION ALL
SELECT
    3 AS application_id,
    101 AS job_id,
    'Data Analyst' AS job_title