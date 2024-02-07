CREATE TABLE IF NOT EXISTS S_GNSS_INTF
(
    DEVICE_ID         INTEGER COMMENT 'Device identifier',
    TIMESTAMP_LOCAL   TIMESTAMP_NTZ(6) COMMENT 'Local Timestamp',
    TIMESTAMP_UTC     TIMESTAMP_NTZ(6) COMMENT 'Coordinated Universal Time Timestamp',
    GPS_WEEK          DECIMAL(4, 0) COMMENT 'Global Positioning System week number since 6-Jan-1980',
    GPS_TOW           DECIMAL(12, 6) COMMENT 'Global Positioning System Time of week [s]',
    N_JAMMING         INTEGER COMMENT 'Number of radio channels affected by jamming',
    ANTENNA           STRING COMMENT 'Antenna',
    SPOOFING          BOOLEAN COMMENT 'Spoofing detected by built-in test',
    SPOOFING_OSNMA    BOOLEAN COMMENT 'Spoofing detected by Galileo OSNMA',
    FREQ_JAMMING      DECIMAL(11, 0) COMMENT 'Interference frequency [Hz]',
    BANDWIDTH_JAMMING DECIMAL(11, 0) COMMENT 'Interference bandwidth [Hz]',
    GAIN_GPS_L1_E1    DECIMAL(4, 0) COMMENT 'Receiver gain for GPS L1 and Galileo E1 [dB]',
    GAIN_GLO_L1       DECIMAL(4, 0) COMMENT 'Receiver gain for GLONASS L1 [dB]',
    GAIN_B1           DECIMAL(4, 0) COMMENT 'Receiver gain for Beidou B1 [dB]',
    GAIN_L5_E5A_B2A   DECIMAL(4, 0) COMMENT 'Receiver gain for GPS L5 and Galileo E5a and Beidou B2a [dB]',
    GAIN_L5_E5B_B2B   DECIMAL(4, 0) COMMENT 'Receiver gain for Galileo E5b and Beidou B2b [dB]',
    GAIN_GPS_L2       DECIMAL(4, 0) COMMENT 'Receiver gain for GPS L2 [dB]',
    GAIN_GLO_L2       DECIMAL(4, 0) COMMENT 'Receiver gain for GLONASS L2 [dB]',
    CREATED_TIMESTAMP TIMESTAMP_NTZ(6) COMMENT 'Timestamp of the row creation'
)
    COMMENT = 'Standardization table for Global Positioning System interference data'