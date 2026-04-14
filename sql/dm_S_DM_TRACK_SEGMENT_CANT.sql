CREATE TABLE IF NOT EXISTS S_DM_TRACK_SEGMENT_CANT (
	TRACK_EDGE_ID VARCHAR(16777216) COMMENT 'Reference to track edge',
	TRACK_SEGMENT_TYPE VARCHAR(16777216) COMMENT 'Type of curve [line]',
	TRACK_SEGMENT_REFERENCE_POSITION NUMBER(10,3) COMMENT 'Distance from track edge start node to track segment start [m]',
	TRACK_SEGMENT_LENGTH NUMBER(10,3) COMMENT 'Length of track segment [m]',
	TRACK_SEGMENT_DIRECTION NUMBER(38,0) COMMENT 'Direction from the segment to the track edge (1=in the same direction, -1=against the track direction)',
	INITIAL_CANT NUMBER(6,3) COMMENT 'Cant at start of line segment [m]',
	END_CANT NUMBER(6,3) COMMENT 'Cant at end of line segment [m]',
	TRACK_GAUGE NUMBER(7,3) COMMENT 'Distance between center of the running surface of both rails of line [m]',
	VALID_FROM TIMESTAMP_NTZ(6) COMMENT 'Local date valid from',
	VALID_TO TIMESTAMP_NTZ(6) COMMENT 'Local valid to',
	CREATED_TIMESTAMP TIMESTAMP_NTZ(6) COMMENT 'Timestamp of the row creation'
)
COMMENT='Standardization table for digital map track segment cant'
;