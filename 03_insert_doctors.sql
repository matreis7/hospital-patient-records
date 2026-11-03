-- Insert hospital doctors

INSERT INTO doctors (
	department_id,
	first_name,
	last_name,
	specialty,
	email
)

VALUES
	(1, 'James', 'Adams', 'Cardiology', 'james.adams@hospital.test'),
    (1, 'Emily', 'Brown', 'Interventional Cardiology', 'emily.brown@hospital.test'),

    (2, 'Robert', 'Wilson', 'Neurology', 'robert.wilson@hospital.test'),
    (2, 'Sophia', 'Taylor', 'Clinical Neurology', 'sophia.taylor@hospital.test'),

    (3, 'Daniel', 'Martin', 'Orthopaedic Surgery', 'daniel.martin@hospital.test'),
    (3, 'Olivia', 'Clark', 'Sports Medicine', 'olivia.clark@hospital.test'),

    (4, 'Michael', 'Lewis', 'Paediatrics', 'michael.lewis@hospital.test'),
    (4, 'Isabella', 'Walker', 'Paediatric Medicine', 'isabella.walker@hospital.test'),

    (5, 'William', 'Hall', 'Emergency Medicine', 'william.hall@hospital.test'),
    (5, 'Charlotte', 'Young', 'Emergency Care', 'charlotte.young@hospital.test')

RETURNING *;