CREATE TABLE IF NOT EXISTS TABLE S_DM_TRACK_LINEAR_ELEMENT (
	TRACK_EDGE_ID VARCHAR(16777216) COMMENT 'Reference to track edge',
	NUMBER_OF_POINTS NUMBER(38,0) COMMENT 'Number of 10m points',
	LIST_POSITION ARRAY COMMENT 'List with the position of the 10m points from s_dm_trackpoint [m]',
	LIST_POINTS ARRAY COMMENT 'List with the coordinate of the 10m points from s_dm_trackpoint EPSG:2056 [m]',
	GEOMETRY_LENGTH NUMBER(10,3) COMMENT 'Length of the geometry object  [m]',
	WKT_LV95 VARCHAR(16777216) COMMENT 'WKT (Well-known text) object as one linestring of the 10m points from s_dm_trackpoint EPSG:2056 [m]',
	GEOMETRY_LV95 GEOMETRY COMMENT 'Geometry object as one linestring of the 10m points from s_dm_trackpoint EPSG:2056 [m]',
	VALID_FROM TIMESTAMP_NTZ(6) COMMENT 'Local date valid from',
	VALID_TO TIMESTAMP_NTZ(6) COMMENT 'Local valid to',
	CREATED_TIMESTAMP TIMESTAMP_NTZ(6) COMMENT 'Timestamp of the row creation'
)
COMMENT='Standardization table for digital map track as geometry object'
;