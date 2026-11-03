-- Test 1 - 
SELECT
    status,
    COUNT(*) AS total_visits
FROM visits
GROUP BY status
ORDER BY total_visits DESC;

-- Test 2 - Visits per doctor
SELECT
    d.doctor_id,
    d.first_name,
    d.last_name,
    dep.department_name,
    COUNT(v.visit_id) AS total_visits

FROM doctors d

JOIN departments dep
    ON d.department_id = dep.department_id

LEFT JOIN visits v
    ON d.doctor_id = v.doctor_id

GROUP BY
    d.doctor_id,
    d.first_name,
    d.last_name,
    dep.department_name

ORDER BY total_visits DESC;

-- Test 3 - Potentially inconsistent visit statuses
SELECT
    visit_id,
    visit_datetime,
    status,
    reason

FROM visits

WHERE
    (status = 'Completed'
        AND visit_datetime > CURRENT_TIMESTAMP)

    OR

    (status = 'Scheduled'
        AND visit_datetime < CURRENT_TIMESTAMP)

ORDER BY visit_datetime;