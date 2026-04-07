CREATE TABLE IF NOT EXISTS TABLE S_DM_TRACK_SEGMENT_POSITION (
	TRACK_EDGE_ID VARCHAR(16777216) COMMENT 'Reference to track edge',
	TRACK_SEGMENT_TYPE VARCHAR(16777216) COMMENT 'Type of curve [line, circle, clothoid]',
	TRACK_SEGMENT_REFERENCE_POSITION NUMBER(10,3) COMMENT 'Distance from track edge start node to track segment start [m]',
	TRACK_SEGMENT_LENGTH NUMBER(10,3) COMMENT 'Length of track segment [m]',
	TRACK_SEGMENT_DIRECTION NUMBER(38,0) COMMENT 'Direction from the segment to the track edge (1=in the same direction, -1=against the track direction)',
	UTM_CELL VARCHAR(16777216) COMMENT 'UTM cell; for Swiss applications LV95',
	NORTH NUMBER(10,3) COMMENT 'Starting point for line, center point for circle and clothoid; North coordinate in Cartesian coordinate system w.r.t. UTM cell [m]',
	EAST NUMBER(10,3) COMMENT 'Starting point for line, center point for circle and clothoid; East coordinate in Cartesian coordinate system w.r.t. UTM cell [m]',
	AZIMUTH NUMBER(7,6) COMMENT 'Azimuth for line, initial azimuth for clothoid in radians; between north and line/orientation of clothoid center [rad]',
	INITIAL_ARC_LENGTH NUMBER(10,3) COMMENT 'Initial arc length for circle and clothoid in meters; distance from north pole of the circle/center point of clothoid to starting point [m]',
	RADIUS NUMBER(12,3) COMMENT 'Signed radius of circle [m]',
	CLOTHOID_CONSTANT NUMBER(38,30) COMMENT 'Parameter describing the change of radius over the arc length of the clothoid [m]',
	VALID_FROM TIMESTAMP_NTZ(6) COMMENT 'Local date valid from',
	VALID_TO TIMESTAMP_NTZ(6) COMMENT 'Local valid to',
	CREATED_TIMESTAMP TIMESTAMP_NTZ(6) COMMENT 'Timestamp of the row creation'
)
COMMENT='Standardization table for digital map track segment position'
;