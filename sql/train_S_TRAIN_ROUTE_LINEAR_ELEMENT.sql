CREATE TABLE IF NOT EXISTS TABLE S_TRAIN_ROUTE_LINEAR_ELEMENT (
	OPERATING_DATE DATE COMMENT 'Operating_date',
	TRAIN_NUMBER NUMBER(38,0) COMMENT 'Train_number',
	NUMBER_OF_TRACKS NUMBER(38,0) COMMENT 'Number of tracks',
	LIST_TRACK_ID ARRAY COMMENT 'List with the track edge identifier',
	LIST_TRACK_LENGTH ARRAY COMMENT 'List with the track edge length (the true arc len) [m]',
	LIST_POSITION_AT_TRACK_START ARRAY COMMENT 'List with the track position at the start from the route [m]',
	LIST_POSITION_AT_TRACK_END ARRAY COMMENT 'List with the track position at the end from the route [m]',
	GAP BOOLEAN COMMENT 'True if the route contains gaps',
	LIST_GAP_BEFORE ARRAY COMMENT 'List with interruption indicator before the track',
	LIST_GAP_AFTER ARRAY COMMENT 'List with interruption indicator after the track',
	TURNAROUND BOOLEAN COMMENT 'True if the route contains turnarounds',
	LIST_TURNAROUND_TRACK ARRAY COMMENT 'List with train turnarounds indicator on the track',
	ROUTE_LENGTH NUMBER(10,3) COMMENT 'Total length (the true arc len) of the track route [m]',
	GEOMETRY_LENGTH NUMBER(10,3) COMMENT 'Length of the geometry object [m]',
	WKT_LV95 VARCHAR(16777216) COMMENT 'WKT (Well-known text) object as a mulitlinestring of the track route EPSG:2056 [m]',
	GEOMETRY_LV95 GEOMETRY COMMENT 'Geometry object as a mulitlinestring of the track route EPSG:2056 [m]',
	CREATED_TIMESTAMP TIMESTAMP_NTZ(6) COMMENT 'Timestamp of the row creation'
)
COMMENT='Standardization table for digital map track as geometry object'
;