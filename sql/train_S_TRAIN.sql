CREATE TABLE IF NOT EXISTS S_TRAIN (
	OPERATING_DATE DATE COMMENT 'Operating_date',
	TRAIN_NUMBER NUMBER(38,0) COMMENT 'Train_number',
	UIC VARCHAR(16777216) COMMENT 'International UNION of railways unique number of vehicle',
	ROUTE_START_TIME TIMESTAMP_NTZ(6) COMMENT 'Start time ON route',
	ROUTE_END_TIME TIMESTAMP_NTZ(6) COMMENT 'End time ON route',
	DURATION VARCHAR(16777216) COMMENT 'Duration of the train journey',
	ROUTE VARCHAR(16777216) COMMENT 'Route of the train journey',
	CREATED_TIMESTAMP TIMESTAMP_NTZ(6) COMMENT 'Timestamp of the row creation'
)
COMMENT='Train journey summary'
;