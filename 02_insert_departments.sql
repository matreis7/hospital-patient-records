-- Insert hospital departments

INSERT INTO departments (
	department_name,
	location
)

VALUES
	('Cardiology', 'Building A - Floor 2'),
    ('Neurology', 'Building A - Floor 3'),
    ('Orthopaedics', 'Building B - Floor 1'),
    ('Paediatrics', 'Building B - Floor 2'),
    ('Emergency Medicine', 'Building C - Ground Floor')
RETURNING *;