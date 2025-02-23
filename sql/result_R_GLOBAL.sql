CREATE TABLE IF NOT EXISTS TABLE R_GLOBAL (
	ALGORITHM_ID VARCHAR(16777216) COMMENT 'Algorithm identifier',
	SENSOR_SET ARRAY COMMENT 'Array[int] of device_id',
	PARAMETER_SET OBJECT COMMENT 'Parameter of the algorithm {\"param 1\":value1,...} as json-formatted string; \"Reference_System\" is mandatory',
	OPERATING_DATE DATE COMMENT 'Operating Date',
	TRAIN_NUMBER NUMBER(38,0) COMMENT 'Train Number',
	TIMESTAMP_LOCAL TIMESTAMP_NTZ(6) COMMENT 'Local Timestamp',
	TIMESTAMP_UTC TIMESTAMP_NTZ(6) COMMENT 'Coordinated Universal Time Timestamp',
	STATUS NUMBER(38,0) COMMENT 'Based on status table for Fusion Result, needs to be amended if necessary',
	NORTH_LV95 NUMBER(10,3) COMMENT 'Coordinate north EPSG:2056 [m]',
	EAST_LV95 NUMBER(10,3) COMMENT 'Coordinate east EPSG:2056 [m]',
	HEIGHT_LV95 NUMBER(10,3) COMMENT 'Coordinate height EPSG:2056 [m]',
	LATITUDE_ETRS89 NUMBER(12,9) COMMENT 'Latitude EPSG:4258 [deg]',
	LONGITUDE_ETRS89 NUMBER(12,9) COMMENT 'Longitude EPSG:4258 [deg]',
	ALTITUDE_ETRS89 NUMBER(10,3) COMMENT 'Altitude EPSG:4258 [m]',
	VELOCITY_NORTH NUMBER(6,3) COMMENT 'Velocity north [m/s]',
	VELOCITY_EAST NUMBER(6,3) COMMENT 'Velocity east [m/s]',
	VELOCITY_DOWN NUMBER(6,3) COMMENT 'Velocity down [m/s]',
	ACC_X NUMBER(8,5) COMMENT 'Acceleration x [m/s2] in body frame',
	ACC_Y NUMBER(8,5) COMMENT 'Acceleration y [m/s2] in body frame',
	ACC_Z NUMBER(8,5) COMMENT 'Acceleration z [m/s2] in body frame',
	ROLL NUMBER(7,6) COMMENT 'Roll [rad] of extrinsic Euler angles RPY representing the rotational part of transformation from body frame to NED or ENU (project specific)',
	PITCH NUMBER(7,6) COMMENT 'Pitch [rad] of extrinsic Euler angles RPY representing the rotational part of transformation from body frame to NED or ENU (project specific)',
	YAW NUMBER(7,6) COMMENT 'Yaw [rad] of extrinsic Euler angles RPY representing the rotational part of transformation from body frame to NED or ENU (project specific)',
	ANG_RATE_X NUMBER(8,6) COMMENT 'Angular rate x [rad/s] in body frame',
	ANG_RATE_Y NUMBER(8,6) COMMENT 'Angular rate y [rad/s] in body frame',
	ANG_RATE_Z NUMBER(8,6) COMMENT 'Angular rate z [rad/s] in body frame',
	STD_DEV_NORTH NUMBER(10,3) COMMENT 'Standard deviation north [m]',
	STD_DEV_EAST NUMBER(10,3) COMMENT 'Standard deviation east [m]',
	STD_DEV_HEIGHT NUMBER(10,3) COMMENT 'Standard deviation height [m]',
	STD_DEV_VELOCITY_NORTH NUMBER(6,3) COMMENT 'Standard deviation velocity north [m/s]',
	STD_DEV_VELOCITY_EAST NUMBER(6,3) COMMENT 'Standard deviation velocity east [m/s]',
	STD_DEV_VELOCITY_DOWN NUMBER(6,3) COMMENT 'Standard deviation velocity down [m/s]',
	STD_DEV_ROLL NUMBER(8,6) COMMENT 'Standard deviation roll [rad]',
	STD_DEV_PITCH NUMBER(8,6) COMMENT 'Standard deviation pitch [rad]',
	STD_DEV_YAW NUMBER(8,6) COMMENT 'Standard deviation yaw [rad]',
	USED_SATS NUMBER(38,0) COMMENT 'Number of satellite vehicles used',
	TRACKED_SATS NUMBER(38,0) COMMENT 'Number of satellite vehicles tracked',
	SPEED NUMBER(6,3) COMMENT 'Absolute along track speed [m/s]',
	STD_DEV_SPEED NUMBER(6,3) COMMENT 'Standard deviation speed [m/s]',
	MOVEMENT_DIRECTION BOOLEAN COMMENT 'TRUE when driving +x, FALSE when driving -x in body frame',
	CREATED_TIMESTAMP TIMESTAMP_NTZ(6) COMMENT 'Timestamp of the row creation',
	VELOCITY_X NUMBER(6,3) COMMENT 'Velocity x in body frame [m/s]',
	VELOCITY_Y NUMBER(6,3) COMMENT 'Velocity y in body frame [m/s]',
	VELOCITY_Z NUMBER(6,3) COMMENT 'Velocity z in body frame [m/s]'
)
COMMENT='Fusion Result - Global Coordinates'
;