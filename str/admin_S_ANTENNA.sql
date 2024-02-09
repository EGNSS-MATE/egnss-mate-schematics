CREATE TABLE IF NOT EXISTS TABLE S_ANTENNA (
	DEVICE_ID NUMBER(38,0) COMMENT 'Unique identification number for device in table s_device',
	ANTENNA_ID NUMBER(38,0) COMMENT 'Unique identification number for antenna (device_id in table s_device)',
	TRAIN_ANTENNA VARCHAR(16777216) COMMENT 'Antenna of the train',
	DEVICE_ANTENNA VARCHAR(16777216) COMMENT 'Antenna of the device',
	VALID_FROM TIMESTAMP_NTZ(6) COMMENT 'UTC date valid from',
	VALID_TO TIMESTAMP_NTZ(6) COMMENT 'UTC date alid to'
)
COMMENT='Relationship between device antenna and train antenna'
