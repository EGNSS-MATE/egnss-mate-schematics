CREATE TABLE IF NOT EXISTS TABLE S_DM_TRACKPOINT (
	TRACK_EDGE_ID VARCHAR(16777216) COMMENT 'Reference to track edge',
	POSITION NUMBER(10,3) COMMENT 'Distance from start of track edge to track point',
	NORTH_LV95 NUMBER(10,3) COMMENT 'Coordinate north EPSG:2056 [m]',
	EAST_LV95 NUMBER(10,3) COMMENT 'Coordinate east EPSG:2056 [m]',
	HEIGHT_LV95 NUMBER(10,3) COMMENT 'Coordinate height EPSG:2056 [m]',
	LATITUDE_ETRS89 NUMBER(12,9) COMMENT 'Latitude EPSG:4258 [deg]',
	LONGITUDE_ETRS89 NUMBER(12,9) COMMENT 'Longitude EPSG:4258 [deg]',
	ALTITUDE_ETRS89 NUMBER(10,3) COMMENT 'Altitude EPSG:4258 [deg]',
	RADIUS NUMBER(10,3) COMMENT 'Track radius [m]',
	CANT NUMBER(10,3) COMMENT 'Track cant (height difference berween radius) [mm]',
	GRADIENT NUMBER(6,3) COMMENT 'Track gradient (+ upwards slope, - downwards slope) [permille]',
	AZIMUTH_LV95 NUMBER(7,6) COMMENT 'Azimuth EPSG:2056 +/- pi [rad]',
	AZIMUTH_ETRS89 NUMBER(7,6) COMMENT 'Azimuth EPSG:4258 +/- pi [rad]',
	VALID_FROM TIMESTAMP_NTZ(6) COMMENT 'Local date valid from',
	VALID_TO TIMESTAMP_NTZ(6) COMMENT 'Local valid to',
	CREATED_TIMESTAMP TIMESTAMP_NTZ(6) COMMENT 'Timestamp of the row creation'
)
COMMENT='Standardization table for digital map track point'
