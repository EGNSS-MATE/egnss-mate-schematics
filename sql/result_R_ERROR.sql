CREATE TABLE IF NOT EXISTS TABLE R_ERROR (
	ALGORITHM_ID VARCHAR(16777216) COMMENT 'Algorithm identifier',
	SENSOR_SET ARRAY COMMENT 'Array of device_id',
	PARAMETER_SET OBJECT COMMENT 'Parameter of the algorithm {\"param 1\":value1,...}',
	OPERATING_DATE DATE COMMENT 'Operating_date',
	TRAIN_NUMBER NUMBER(38,0) COMMENT 'Train_number',
	START_TIMESTAMP_LOCAL TIMESTAMP_NTZ(6) COMMENT 'Start error range in Local Timestamp',
	START_TIMESTAMP_UTC TIMESTAMP_NTZ(6) COMMENT 'Start error range in Universal Time Timestamp',
	END_TIMESTAMP_LOCAL TIMESTAMP_NTZ(6) COMMENT 'End error range in Local Timestamp',
	END_TIMESTAMP_UTC TIMESTAMP_NTZ(6) COMMENT 'End error range in Coordinated Universal Time Timestamp',
	STATUS NUMBER(38,0) COMMENT 'Based on status table for Fusion Result,needs to be amended if necessary',
	SEQUENCE_NUMBER NUMBER(38,0) COMMENT 'Error sequence number of a train run',
	ERROR_DESCRIPTION VARCHAR(16777216) COMMENT 'Error description',
	ERROR_VALUE VARCHAR(16777216) COMMENT 'Error value',
	CREATED_TIMESTAMP TIMESTAMP_NTZ(6) COMMENT 'Timestamp of the row creation'
)
COMMENT='Fusion Error'
;