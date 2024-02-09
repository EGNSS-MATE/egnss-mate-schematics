CREATE TABLE IF NOT EXISTS TABLE S_BALISEREADER (
	DEVICE_ID NUMBER(38,0) COMMENT 'Device identifier',
	TIMESTAMP_LOCAL TIMESTAMP_NTZ(6) COMMENT 'Local Timestamp',
	TIMESTAMP_UTC TIMESTAMP_NTZ(6) COMMENT 'Coordinated Universal Time Timestamp',
	NID_C NUMBER(38,0) COMMENT 'Numerical identifier of country or region',
	NID_BG NUMBER(38,0) COMMENT 'Numerical identifier of the balise group',
	N_PIG NUMBER(38,0) COMMENT 'Position in the group',
	N_TOTAL NUMBER(38,0) COMMENT 'Total number of balises in the balise group',
	M_DUP NUMBER(38,0) COMMENT 'Used to indicate whether the information of the balise is a duplicate of the balise before or after this one',
	CREATED_TIMESTAMP TIMESTAMP_NTZ(6) COMMENT 'Timestamp of the row creation'
)
COMMENT='Standardization table for balise reader'
