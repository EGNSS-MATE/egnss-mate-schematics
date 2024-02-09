CREATE TABLE IF NOT EXISTS TABLE S_COORDINATE_SYSTEM (
	COORD_SYSTEM_NAME VARCHAR(16777216) COMMENT 'Name of the coordinate system',
	EPSG NUMBER(38,0) COMMENT 'EPSG code of the coordinate system according https://epsg.io/',
	VALID_FROM TIMESTAMP_NTZ(6) COMMENT 'UTC date valid from',
	VALID_TO TIMESTAMP_NTZ(6) COMMENT 'UTC date alid to'
)
COMMENT='Definitions of the coordinate systems'
