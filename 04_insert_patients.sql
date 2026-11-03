-- Insert hospital patients

INSERT INTO patients (
	first_name,
	last_name,
	date_of_birth,
	email,
	phone
)

VALUES
	('John', 'Smith', '1985-04-12', 'john.smith@email.test', '0871000001'),
    ('Sarah', 'Jones', '1992-08-23', 'sarah.jones@email.test', '0871000002'),
    ('David', 'Miller', '1978-01-15', 'david.miller@email.test', '0871000003'),
    ('Emma', 'Davis', '2001-11-05', 'emma.davis@email.test', '0871000004'),
    ('James', 'Garcia', '1965-06-30', 'james.garcia@email.test', '0871000005'),
    ('Mary', 'Rodriguez', '1998-03-19', 'mary.rodriguez@email.test', '0871000006'),
    ('Robert', 'Martinez', '1959-09-08', 'robert.martinez@email.test', '0871000007'),
    ('Linda', 'Hernandez', '1988-12-14', 'linda.hernandez@email.test', '0871000008'),
    ('Michael', 'Lopez', '1972-05-21', 'michael.lopez@email.test', '0871000009'),
    ('Patricia', 'Gonzalez', '1995-07-17', 'patricia.gonzalez@email.test', '0871000010'),

    ('William', 'Wilson', '1982-02-11', 'william.wilson@email.test', '0871000011'),
    ('Elizabeth', 'Anderson', '1990-10-27', 'elizabeth.anderson@email.test', '0871000012'),
    ('Thomas', 'Thomas', '1968-04-03', NULL, '0871000013'),
    ('Jennifer', 'Taylor', '2003-06-09', 'jennifer.taylor@email.test', NULL),
    ('Charles', 'Moore', '1955-12-22', 'charles.moore@email.test', '0871000015'),
    ('Jessica', 'Jackson', '1997-01-31', 'jessica.jackson@email.test', '0871000016'),
    ('Christopher', 'Martin', '1980-07-06', NULL, NULL),
    ('Margaret', 'Lee', '1975-09-18', 'margaret.lee@email.test', '0871000018'),
    ('Daniel', 'Perez', '1993-03-25', 'daniel.perez@email.test', '0871000019'),
    ('Barbara', 'Thompson', '1962-11-13', 'barbara.thompson@email.test', '0871000020'),

    ('Matthew', 'White', '1987-08-02', 'matthew.white@email.test', '0871000021'),
    ('Susan', 'Harris', '1970-02-16', 'susan.harris@email.test', '0871000022'),
    ('Anthony', 'Sanchez', '2000-05-28', 'anthony.sanchez@email.test', '0871000023'),
    ('Karen', 'Clark', '1984-12-07', 'karen.clark@email.test', '0871000024'),
    ('Mark', 'Ramirez', '1958-03-14', 'mark.ramirez@email.test', '0871000025'),
    ('Nancy', 'Lewis', '1991-06-20', NULL, '0871000026'),
    ('Steven', 'Robinson', '1979-10-01', 'steven.robinson@email.test', '0871000027'),
    ('Lisa', 'Walker', '2005-04-16', 'lisa.walker@email.test', '0871000028'),
    ('Paul', 'Young', '1967-07-29', 'paul.young@email.test', NULL),
    ('Sandra', 'Allen', '1999-09-11', 'sandra.allen@email.test', '0871000030')

RETURNING patient_id, first_name, last_name;