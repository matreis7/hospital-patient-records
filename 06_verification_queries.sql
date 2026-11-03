SELECT
    p.patient_id,
    p.first_name || ' ' || p.last_name AS patient_name,
    v.visit_id,
    v.visit_datetime,
    v.visit_type,
    v.status,
    d.first_name || ' ' || d.last_name AS doctor_name,
    dep.department_name
FROM visits v

JOIN patients p
    ON v.patient_id = p.patient_id

JOIN doctors d
    ON v.doctor_id = d.doctor_id

JOIN departments dep
    ON d.department_id = dep.department_id

ORDER BY p.patient_id, v.visit_datetime;