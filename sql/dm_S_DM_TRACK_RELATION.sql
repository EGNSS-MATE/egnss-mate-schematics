CREATE TABLE IF NOT EXISTS S_DM_TRACK_RELATION (
	TRACK_EDGE_ID VARCHAR(16777216) COMMENT 'Unique identifier of track edge',
	LIST_PREV_TRACK ARRAY COMMENT 'Previous track edges as {\"track_edge_id\":value,\"trafficable\":value} as json-formatted string',
	COUNT_PREV_TRACK NUMBER(38,0) COMMENT 'Number of previous tracks',
	LIST_NEXT_TRACK ARRAY COMMENT 'Following track edges as {\"track_edge_id\":value,\"trafficable\":value} as json-formatted string',
	COUNT_NEXT_TRACK NUMBER(38,0) COMMENT 'Number of following tracks',
	VALID_FROM TIMESTAMP_NTZ(6) COMMENT 'Local date valid from',
	VALID_TO TIMESTAMP_NTZ(6) COMMENT 'Local valid to',
	CREATED_TIMESTAMP TIMESTAMP_NTZ(6) COMMENT 'Timestamp of the row creation'
)
COMMENT='Standardization table for track relation'
;