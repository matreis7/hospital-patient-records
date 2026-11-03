CREATE TABLE departments (
    department_id INT GENERATED ALWAYS AS IDENTITY,
    department_name VARCHAR(100) NOT NULL,
    location VARCHAR(100),

    CONSTRAINT pk_departments
        PRIMARY KEY (department_id),

    CONSTRAINT uq_departments_name
        UNIQUE (department_name)
);

CREATE TABLE patients (
    patient_id INT GENERATED ALWAYS AS IDENTITY,
    first_name VARCHAR(60) NOT NULL,
    last_name VARCHAR(60) NOT NULL,
    date_of_birth DATE NOT NULL,
    email VARCHAR(254),
    phone VARCHAR(30),
    registered_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT pk_patients
        PRIMARY KEY (patient_id),

    CONSTRAINT chk_patient_date_of_birth
        CHECK (date_of_birth <= CURRENT_DATE)
);

CREATE TABLE doctors (
    doctor_id INT GENERATED ALWAYS AS IDENTITY,
    department_id INT NOT NULL,
    first_name VARCHAR(60) NOT NULL,
    last_name VARCHAR(60) NOT NULL,
    specialty VARCHAR(100) NOT NULL,
    email VARCHAR(254) NOT NULL,

    CONSTRAINT pk_doctors
        PRIMARY KEY (doctor_id),

    CONSTRAINT uq_doctors_email
        UNIQUE (email),

    CONSTRAINT fk_doctors_department
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
		ON DELETE RESTRICT
);

CREATE TABLE visits (
	visit_id INT GENERATED ALWAYS AS IDENTITY,
	patient_id INT NOT NULL,
	doctor_id INT NOT NULL,
	visit_datetime TIMESTAMPTZ NOT NULL,
	visit_type VARCHAR(30) NOT NULL,
	status VARCHAR(20) NOT NULL DEFAULT 'Scheduled',
	reason TEXT NOT NULL,
	clinical_notes TEXT,

	CONSTRAINT pk_visits
		PRIMARY KEY (visit_id),

	CONSTRAINT fk_visits_patient
		FOREIGN KEY (patient_id)
		REFERENCES patients(patient_id)
		ON DELETE RESTRICT,
		
	CONSTRAINT fk_visits_doctor
		FOREIGN KEY (doctor_id)
		REFERENCES doctors(doctor_id)
		ON DELETE RESTRICT,

	CONSTRAINT chk_visits_type
		CHECK (
			visit_type IN (
				'Consultation',
				'Follow-up',
				'Emergency',
				'Other'
			)
		),

	CONSTRAINT chk_visits_status
		CHECK (
			status IN (
				'Scheduled',
				'Completed',
				'Cancelled',
				'No-show'
			)
		)
);