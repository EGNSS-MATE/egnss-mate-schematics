CREATE TABLE IF NOT EXISTS TABLE S_GNSS_ATTITUDE (
	DEVICE_ID NUMBER(38,0) COMMENT 'Device identifier',
	TIMESTAMP_LOCAL TIMESTAMP_NTZ(6) COMMENT 'Local Timestamp',
	TIMESTAMP_UTC TIMESTAMP_NTZ(6) COMMENT 'Coordinated Universal Time Timestamp',
	GPS_WEEK NUMBER(4,0) COMMENT 'Global Positioning System week number since 6-Jan-1980',
	GPS_TOW NUMBER(12,6) COMMENT 'Global Positioning System Time of week [s]',
	ERROR_CODE NUMBER(38,0) COMMENT 'Error code',
	ROLL NUMBER(7,6) COMMENT 'Roll [rad]',
	PITCH NUMBER(7,6) COMMENT 'Pitch [rad]',
	YAW NUMBER(7,6) COMMENT 'Yaw [rad]',
	STD_DEV_ROLL NUMBER(8,6) COMMENT 'Standard deviation roll [rad]',
	STD_DEV_PITCH NUMBER(8,6) COMMENT 'Standard deviation pitch [rad]',
	STD_DEV_YAW NUMBER(8,6) COMMENT 'Standard deviation yaw [rad]',
	CREATED_TIMESTAMP TIMESTAMP_NTZ(6) COMMENT 'Timestamp of the row creation'
)
COMMENT='Standardization table for Global Positioning System Attitude'
;