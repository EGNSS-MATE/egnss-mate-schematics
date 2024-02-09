CREATE TABLE IF NOT EXISTS TABLE S_TRAIN_ROUTE (
	OPERATING_DATE DATE COMMENT 'Operating_date',
	TRAIN_NUMBER NUMBER(38,0) COMMENT 'Train_number',
	UIC VARCHAR(16777216) COMMENT 'International union of railways unique number of vehicle',
	ROUTE_START_TIME TIMESTAMP_NTZ(6) COMMENT 'Start time route',
	ROUTE_END_TIME TIMESTAMP_NTZ(6) COMMENT 'End time on route',
	TRACK_EDGE_ORDER NUMBER(38,0) COMMENT 'Order of track edge on route',
	TRACK_EDGE_ID VARCHAR(16777216) COMMENT 'Reference to track edge',
	TRAIN_TRACK_ORIENTATION NUMBER(38,0) COMMENT 'Direction of train travel to the track edge direction (1=in the same direction, -1=against the track direction)',
	CREATED_TIMESTAMP TIMESTAMP_NTZ(6) COMMENT 'Timestamp of the row creation'
)
COMMENT='Standardization table for train route'
