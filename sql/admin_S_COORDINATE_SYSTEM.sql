CREATE TABLE IF NOT EXISTS S_COORDINATE_SYSTEM
(
    COORD_SYSTEM_NAME STRING COMMENT 'Name of the coordinate system',
    EPSG              INTEGER COMMENT 'EPSG code of the coordinate system according https://epsg.io/',
    VALID_FROM        TIMESTAMP_NTZ(6) COMMENT 'UTC date valid from',
    VALID_TO          TIMESTAMP_NTZ(6) COMMENT 'UTC date valid to'
)
    COMMENT = 'Definitions of the coordinate systems'