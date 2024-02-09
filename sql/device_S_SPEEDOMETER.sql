CREATE TABLE IF NOT EXISTS TABLE S_SPEEDOMETER (
	DEVICE_ID NUMBER(38,0) COMMENT 'Device identifier',
	TIMESTAMP_LOCAL TIMESTAMP_NTZ(6) COMMENT 'Local Timestamp',
	TIMESTAMP_UTC TIMESTAMP_NTZ(6) COMMENT 'Coordinated Universal Time Timestamp',
	SPEED_ERROR_CODE NUMBER(38,0) COMMENT 'Speed error code',
	SPEED NUMBER(6,3) COMMENT 'Speed [m/s]',
	CREATED_TIMESTAMP TIMESTAMP_NTZ(6) COMMENT 'Timestamp of the row creation',
	RELATIVE_DISTANCE NUMBER(10,3) COMMENT 'Relative Distance between current time to previous time [m]',
	STANDSTILL BOOLEAN COMMENT 'STANDSTILL'
)
COMMENT='Standardization table for Speedometer'
