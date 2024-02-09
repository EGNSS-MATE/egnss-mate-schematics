CREATE TABLE IF NOT EXISTS S_DM_BALISE
(
    NID_C             INTEGER COMMENT 'Eurobalise Country Code  based on ETCS Subset 26',
    NID_BG            INTEGER COMMENT 'Eurobalise Balise Group ID  based on ETCS Subset 26',
    N_PIG             INTEGER COMMENT 'Eurobalise Position in Group ID  based on ETCS Subset 26',
    N_TOTAL           INTEGER COMMENT 'Total number of balise(s) in the group',
    TRACK_EDGE_ID     STRING COMMENT 'Reference to track edge where the balise is located on',
    POSITION          DECIMAL(10, 3) COMMENT 'Distance from start of track edge to balise',
    CROSS_DISTANCE    DECIMAL(10, 3) COMMENT 'Distance from the balise to middle of the track',
    NORTH_LV95        DECIMAL(10, 3) COMMENT 'Coordinate north EPSG:2056 [m]',
    EAST_LV95         DECIMAL(10, 3) COMMENT 'Coordinate east EPSG:2056 [m]',
    LATITUDE_ETRS89   DECIMAL(12, 9) COMMENT 'Latitude EPSG:4258 [deg]',
    LONGITUDE_ETRS89  DECIMAL(12, 9) COMMENT 'Longitude EPSG:4258 [deg]',
    VALID_FROM        TIMESTAMP_NTZ(6) COMMENT 'Local date valid from',
    VALID_TO          TIMESTAMP_NTZ(6) COMMENT 'Local valid to',
    CREATED_TIMESTAMP TIMESTAMP_NTZ(6) COMMENT 'Timestamp of the row creation'
)
    COMMENT = 'Standardization table for digital map balise'