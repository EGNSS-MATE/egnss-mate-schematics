CREATE TABLE IF NOT EXISTS S_BALISEREADER
(
    DEVICE_ID         INTEGER COMMENT 'Device identifier',
    TIMESTAMP_LOCAL   TIMESTAMP_NTZ(6) COMMENT 'Local Timestamp',
    TIMESTAMP_UTC     TIMESTAMP_NTZ(6) COMMENT 'Coordinated Universal Time Timestamp',
    NID_C             INTEGER COMMENT 'Numerical identifier of country or region',
    NID_BG            INTEGER COMMENT 'Numerical identifier of the balise group',
    N_PIG             INTEGER COMMENT 'Position in the group',
    N_TOTAL           INTEGER COMMENT 'Total number of balises in the balise group',
    M_DUP             INTEGER COMMENT 'Used to indicate whether the information of the balise is a duplicate of the balise before or after this one',
    CREATED_TIMESTAMP TIMESTAMP_NTZ(6) COMMENT 'Timestamp of the row creation'
)
    COMMENT = 'Standardization table for balise reader'