-- Generate 60 fictional hospital visits

INSERT INTO visits (
	patient_id,
	doctor_id,
	visit_datetime,
	visit_type,
	status,
	reason,
	clinical_notes
)

SELECT
	((n-1) % 25) + 1 AS patient_id,
	((n-1) % 10) + 1 AS doctor_id,

	CASE
		WHEN n % 7 = 0
			THEN CURRENT_TIMESTAMP
				+(n % 30 + 1) * INTERVAL '1 day'
		ELSE
			TIMESTAMPTZ '2026-01-01 09:00:00+00'
			+ (n - 1) * INTERVAL '5 days'
			+ (n % 8) * INTERVAL '1 hour'
	END AS visit_datetime,

	CASE n % 4
		WHEN 0 THEN 'Consultation'
		WHEN 1 THEN 'Follow-up'
		WHEN 2 THEN 'Emergency'
		ELSE 'Other'
	END AS visit_type,

	CASE
		WHEN n % 7 = 0 THEN 'Scheduled'
		WHEN n % 13 = 0 THEN 'No-show'
		WHEN n % 11 = 0 THEN 'Cancelled'
		ELSE 'Completed'
	END AS status,

	CASE n % 5
		WHEN 0 THEN 'Routine health assessment'
		WHEN 1 THEN 'Persistent headache'
		WHEN 2 THEN 'Joint pain'
		WHEN 3 THEN 'Chest discomfort'
		ELSE 'General medical consultation'
	END AS reason,

	CASE 
		WHEN n % 7 = 0 THEN NULL
		ELSE 'Fictional clinical notes for visit' || n
	END AS clinical_notes

FROM generate_series(1, 60) AS gs(n)

RETURNING *;