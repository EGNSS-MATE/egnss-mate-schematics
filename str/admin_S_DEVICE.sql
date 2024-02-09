CREATE TABLE IF NOT EXISTS TABLE S_DEVICE (
	DEVICE_ID NUMBER(38,0) COMMENT 'Unique identification number for device',
	DEVICE_TYPE VARCHAR(16777216) COMMENT 'Type of the device (DEVICE, ANTENNA, ...)',
	DEVICE_NAME VARCHAR(16777216) COMMENT 'Name of the device',
	DEVICE_MODEL VARCHAR(16777216) COMMENT 'Model of the device',
	DEVICE_VERSION VARCHAR(16777216) COMMENT 'Version of the device',
	MANUFACTURER VARCHAR(16777216) COMMENT 'Manufacturer of the device',
	UIC VARCHAR(16777216) COMMENT 'International Union of Railways (identification number of vehicle)',
	VALID_FROM TIMESTAMP_NTZ(6) COMMENT 'UTC date valid from',
	VALID_TO TIMESTAMP_NTZ(6) COMMENT 'UTC date valid to',
	QUATERNION OBJECT COMMENT 'Unit quaternions [a b c w] to boogie frame C1 and C2',
	TRANSLATION OBJECT COMMENT 'Translation [x y z] to boogie frame C1 and C2',
	COORD_SYSTEM_NAME VARCHAR(16777216) COMMENT 'Name of the coordinate reference system referenced to s_coordinate_system',
	COMMENT VARCHAR(16777216) COMMENT 'Comment'
)
COMMENT='Parameters of the devices'
