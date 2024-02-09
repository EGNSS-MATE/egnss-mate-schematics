CREATE TABLE IF NOT EXISTS TABLE S_IMU (
	DEVICE_ID NUMBER(38,0) COMMENT 'Device identifier',
	TIMESTAMP_LOCAL TIMESTAMP_NTZ(6) COMMENT 'Local Timestamp',
	TIMESTAMP_UTC TIMESTAMP_NTZ(6) COMMENT 'Coordinated Universal Time Timestamp',
	ACCELERATION_ERROR_CODE NUMBER(38,0) COMMENT 'Acceleration error code',
	ANGULAR_ERROR_CODE NUMBER(38,0) COMMENT 'Angular error code',
	SPEC_FORCE_X NUMBER(8,5) COMMENT 'Specific Force in x direction [m/s2]',
	SPEC_FORCE_Y NUMBER(8,5) COMMENT 'Specific Force in y direction [m/s2]',
	SPEC_FORCE_Z NUMBER(8,5) COMMENT 'Specific Force in z direction [m/s2]',
	ANG_RATE_X NUMBER(8,6) COMMENT 'Angular rate compensated x [rad/s]',
	ANG_RATE_Y NUMBER(8,6) COMMENT 'Angular rate compensated y [rad/s]',
	ANG_RATE_Z NUMBER(8,6) COMMENT 'Angular rate compensated z [rad/s]',
	COMPENSATED BOOLEAN COMMENT 'If calibrated and corrected for estimated errors, compensated for earth rate and gravity',
	CORRECTED BOOLEAN COMMENT 'If calibrated and corrected for errors estimated by data fusion',
	CREATED_TIMESTAMP TIMESTAMP_NTZ(6) COMMENT 'Timestamp of the row creation'
)
COMMENT='Standardization table for Inertial Measurement Unit (IMU)'
;