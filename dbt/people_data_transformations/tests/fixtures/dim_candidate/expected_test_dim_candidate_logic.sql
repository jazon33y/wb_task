-- tests/fixtures/expected_dim_candidate.sql
SELECT
    201 AS candidate_id,
    'John Doe' AS name,
    'john.doe@example.com' AS email,
    'Referral' AS source
UNION ALL
SELECT
    202 AS candidate_id,
    'Jane Smith' AS name,
    'jane.smith@example.com' AS email,
    'Job Board' AS source
UNION ALL
SELECT
    203 AS candidate_id,
    'Peter Jones' AS name,
    'peter.jones@example.com' AS email,
    'Agency' AS source