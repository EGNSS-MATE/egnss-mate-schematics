CREATE TABLE IF NOT EXISTS TABLE S_VEHICLE (
	UIC VARCHAR(16777216) COMMENT 'International Union of Railways (identification number of vehicle)',
	VEHICLE VARCHAR(16777216) COMMENT 'Abbreviation of the vehicle',
	VALID_FROM TIMESTAMP_NTZ(6) COMMENT 'Date valid from',
	VALID_TO TIMESTAMP_NTZ(6) COMMENT 'Date alid to'
)
COMMENT='Vehicle by loclab'
