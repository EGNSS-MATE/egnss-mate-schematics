CREATE TABLE IF NOT EXISTS S_DM_TRACK
(
    TRACK_EDGE_ID     STRING COMMENT 'Unique identifier of track edge',
    TRACK_EDGE_NAME   STRING COMMENT 'Unique name of track edge',
    FROM_NODE_ID      INTEGER COMMENT 'Unique number identifier of start node of track edge',
    TO_NODE_ID        INTEGER COMMENT 'Unique number identifier of end node of track edge',
    LENGTH            DECIMAL(10, 3) COMMENT 'Length of track edge [m]',
    TYPE              INTEGER COMMENT 'Type = 0 (station track), type = 1 (track between stations), type = 2 (track on switch)',
    VALID_FROM        TIMESTAMP_NTZ(6) COMMENT 'Local date valid from',
    VALID_TO          TIMESTAMP_NTZ(6) COMMENT 'Local valid to',
    CREATED_TIMESTAMP TIMESTAMP_NTZ(6) COMMENT 'Timestamp of the row creation'
)
    COMMENT = 'Standardization table for digital map track'