CREATE TABLE IF NOT EXISTS TABLE S_INSSOL (
	DEVICE_ID NUMBER(38,0) COMMENT 'Device identifier',
	TIMESTAMP_LOCAL TIMESTAMP_NTZ(6) COMMENT 'Local Timestamp',
	TIMESTAMP_UTC TIMESTAMP_NTZ(6) COMMENT 'Coordinated Universal Time Timestamp',
	GPS_WEEK NUMBER(4,0) COMMENT 'Global Positioning System week number since 6-Jan-1980',
	GPS_TOW NUMBER(12,6) COMMENT 'Global Positioning System Time of week [s]',
	ERROR_CODE NUMBER(38,0) COMMENT 'Error code',
	NORTH_LV95 NUMBER(10,3) COMMENT 'Coordinate north EPSG:2056 [m]',
	EAST_LV95 NUMBER(10,3) COMMENT 'Coordinate east EPSG:2056 [m]',
	HEIGHT_LV95 NUMBER(10,3) COMMENT 'Coordinate height EPSG:2056 [m]',
	LATITUDE_ETRS89 NUMBER(12,9) COMMENT 'Latitude EPSG:4258 [deg]',
	LONGITUDE_ETRS89 NUMBER(12,9) COMMENT 'Longitude EPSG:4258 [deg]',
	ALTITUDE_ETRS89 NUMBER(10,3) COMMENT 'Altitude EPSG:4258 [deg]',
	VELOCITY_NORTH NUMBER(6,3) COMMENT 'Velocity nort [m/s]',
	VELOCITY_EAST NUMBER(6,3) COMMENT 'Velocity east [m/s]',
	VELOCITY_DOWN NUMBER(6,3) COMMENT 'Velocity down [m/s]',
	ACC_BIAS_X NUMBER(8,5) COMMENT 'Accelerometer bias x [m/s2]',
	ACC_BIAS_Y NUMBER(8,5) COMMENT 'Accelerometer bias y [m/s2]',
	ACC_BIAS_Z NUMBER(8,5) COMMENT 'Accelerometer bias z [m/s2]',
	ACC_SCALE_FACTOR_X NUMBER(10,9) COMMENT 'Accelerometer scale factor x',
	ACC_SCALE_FACTOR_Y NUMBER(10,9) COMMENT 'Accelerometer scale factor y',
	ACC_SCALE_FACTOR_Z NUMBER(10,9) COMMENT 'Accelerometer scale factor z',
	ROLL NUMBER(7,6) COMMENT 'Roll [rad]',
	PITCH NUMBER(7,6) COMMENT 'Pitch [rad]',
	YAW NUMBER(7,6) COMMENT 'Yaw [rad]',
	ANG_RATE_BIAS_X NUMBER(8,6) COMMENT 'Angular rate bias x [rad/s]',
	ANG_RATE_BIAS_Y NUMBER(8,6) COMMENT 'Angular rate bias y [rad/s]',
	ANG_RATE_BIAS_Z NUMBER(8,6) COMMENT 'Angular rate bias z [rad/s]',
	ANG_RATE_SCALE_FACTOR_X NUMBER(10,9) COMMENT 'Angular rate scale factor x',
	ANG_RATE_SCALE_FACTOR_Y NUMBER(10,9) COMMENT 'Angular rate scale factor y',
	ANG_RATE_SCALE_FACTOR_Z NUMBER(10,9) COMMENT 'Angular rate scale factor z',
	STD_DEV_NORTH NUMBER(10,3) COMMENT 'Standard deviation north [m]',
	STD_DEV_EAST NUMBER(10,3) COMMENT 'Standard deviation east [m]',
	STD_DEV_HEIGHT NUMBER(10,3) COMMENT 'Standard deviation height [m]',
	STD_DEV_VELOCITY_NORTH NUMBER(6,3) COMMENT 'Standard deviation velocity north [m/s]',
	STD_DEV_VELOCITY_EAST NUMBER(6,3) COMMENT 'Standard deviation velocity east [m/s]',
	STD_DEV_VELOCITY_DOWN NUMBER(6,3) COMMENT 'Standard deviation velocity down [m/s]',
	STD_DEV_ROLL NUMBER(8,6) COMMENT 'Standard deviation roll [rad]',
	STD_DEV_PITCH NUMBER(8,6) COMMENT 'Standard deviation pitch [rad]',
	STD_DEV_YAW NUMBER(8,6) COMMENT 'Standard deviation yaw [rad]',
	CREATED_TIMESTAMP TIMESTAMP_NTZ(6) COMMENT 'Timestamp of the row creation'
)
COMMENT='Standardization table for Inertial Solution (INSSOL)'