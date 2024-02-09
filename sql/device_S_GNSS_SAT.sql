CREATE TABLE IF NOT EXISTS TABLE S_GNSS_SAT (
	DEVICE_ID NUMBER(38,0) COMMENT 'Device identifier',
	TIMESTAMP_LOCAL TIMESTAMP_NTZ(6) COMMENT 'Local Timestamp',
	TIMESTAMP_UTC TIMESTAMP_NTZ(6) COMMENT 'Coordinated Universal Time Timestamp',
	GPS_WEEK NUMBER(4,0) COMMENT 'Global Positioning System week number since 6-Jan-1980',
	GPS_TOW NUMBER(12,6) COMMENT 'Global Positioning System Time of week [s]',
	SAT_ID VARCHAR(16777216) COMMENT 'Satellite Vehicle Id',
	SIGNAL_TYPE VARCHAR(16777216) COMMENT 'Signal type',
	LOCK_TIME NUMBER(10,0) COMMENT 'Duration of continuous carrier phase [s]',
	CN0 NUMBER(6,3) COMMENT 'Carrier-to-Noise Power Density (C/N0) [dB-Hz]',
	PSEUDORANGE NUMBER(16,6) COMMENT 'Pseudorange [m]',
	STD_DEV_PSEUDORANGE NUMBER(16,6) COMMENT 'Standard deviation pseudorange [m]',
	DOPPLER NUMBER(10,6) COMMENT 'Doppler [Hz]',
	CARRIER_PHASE NUMBER(16,6) COMMENT 'Carrier phase [cyc]',
	STD_DEV_CARRIER_PHASE NUMBER(16,6) COMMENT 'Standard deviation carrier phase [cyc]',
	AZIMUTH NUMBER(6,5) COMMENT 'Azimuth [0, 2pi] [rad]',
	ELEVATION NUMBER(6,5) COMMENT 'Elevation [0, pi/2] [rad]',
	TRACKING_STATUS BOOLEAN COMMENT 'Tracking status',
	PVT_STATUS BOOLEAN COMMENT 'PVT status',
	ERROR BOOLEAN COMMENT 'Error flag',
	CREATED_TIMESTAMP TIMESTAMP_NTZ(6) COMMENT 'Timestamp of the row creation',
	ANTENNA VARCHAR(16777216) COMMENT 'Antenna'
)
COMMENT='Standardization table for Global Positioning System satellite information'
;