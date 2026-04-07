CREATE TABLE IF NOT EXISTS TABLE S_DM_TRACK_SEGMENT_GRADIENT (
	TRACK_EDGE_ID VARCHAR(16777216) COMMENT 'Reference to track edge',
	TRACK_SEGMENT_TYPE VARCHAR(16777216) COMMENT 'Type of curve [line, circle]',
	TRACK_SEGMENT_REFERENCE_POSITION NUMBER(10,3) COMMENT 'Distance from track edge start node to track segment start [m]',
	TRACK_SEGMENT_LENGTH NUMBER(10,3) COMMENT 'Length of track segment [m]',
	TRACK_SEGMENT_DIRECTION NUMBER(38,0) COMMENT 'Direction from the segment to the track edge (1=in the same direction, -1=against the track direction)',
	INITIAL_HEIGHT NUMBER(10,3) COMMENT 'Starting altitude/initial height w.r.t. reference ellipsoid GRS80 of line and circle; altitude at starting point [m]',
	GRADIENT NUMBER(6,3) COMMENT 'Gradient of line and initial gradient angle of circle; inclination of track for line/angle between north-east plane and track at at starting point for circle; inclination of track for line/angle between north-east plane and track at at starting point for circle [‰]',
	RADIUS NUMBER(10,3) COMMENT 'Signed radius of circle; positive radius for center point above track, negative for center point below track [m]',
	VALID_FROM TIMESTAMP_NTZ(6) COMMENT 'Local date valid from',
	VALID_TO TIMESTAMP_NTZ(6) COMMENT 'Local valid to',
	CREATED_TIMESTAMP TIMESTAMP_NTZ(6) COMMENT 'Timestamp of the row creation'
)
COMMENT='Standardization table for digital map track segement gradient'
;