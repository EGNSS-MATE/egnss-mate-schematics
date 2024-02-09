CREATE TABLE IF NOT EXISTS TABLE S_GNSS_INTF (
	DEVICE_ID NUMBER(38,0) COMMENT 'Device identifier',
	TIMESTAMP_LOCAL TIMESTAMP_NTZ(6) COMMENT 'Local Timestamp',
	TIMESTAMP_UTC TIMESTAMP_NTZ(6) COMMENT 'Coordinated Universal Time Timestamp',
	GPS_WEEK NUMBER(4,0) COMMENT 'Global Positioning System week number since 6-Jan-1980',
	GPS_TOW NUMBER(12,6) COMMENT 'Global Positioning System Time of week [s]',
	N_JAMMING NUMBER(38,0) COMMENT 'Number of radio channels affected by jamming',
	ANTENNA VARCHAR(16777216) COMMENT 'Antenna',
	SPOOFING BOOLEAN COMMENT 'Spoofing detected by built-in test',
	SPOOFING_OSNMA BOOLEAN COMMENT 'Spoofing detected by Galileo OSNMA',
	FREQ_JAMMING NUMBER(11,0) COMMENT 'Interference frequency [Hz]',
	BANDWIDTH_JAMMING NUMBER(11,0) COMMENT 'Interference bandwidth [Hz]',
	GAIN_GPS_L1_E1 NUMBER(4,0) COMMENT 'Receiver gain for GPS L1 and Galileo E1 [dB]',
	GAIN_GLO_L1 NUMBER(4,0) COMMENT 'Receiver gain for GLONASS L1 [dB]',
	GAIN_B1 NUMBER(4,0) COMMENT 'Receiver gain for Beidou B1 [dB]',
	GAIN_L5_E5A_B2A NUMBER(4,0) COMMENT 'Receiver gain for GPS L5 and Galileo E5a and Beidou B2a [dB]',
	GAIN_L5_E5B_B2B NUMBER(4,0) COMMENT 'Receiver gain for Galileo E5b and Beidou B2b [dB]',
	GAIN_GPS_L2 NUMBER(4,0) COMMENT 'Receiver gain for GPS L2 [dB]',
	GAIN_GLO_L2 NUMBER(4,0) COMMENT 'Receiver gain for GLONASS L2 [dB]',
	CREATED_TIMESTAMP TIMESTAMP_NTZ(6) COMMENT 'Timestamp of the row creation'
)
COMMENT='Standardization table for Global Positioning System interference data'
;