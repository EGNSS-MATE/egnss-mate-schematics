CREATE TABLE IF NOT EXISTS TABLE R_TRACK (
	ALGORITHM_ID VARCHAR(16777216) COMMENT 'Algorithm identifier',
	SENSOR_SET ARRAY COMMENT 'Array[int] of device_id',
	PARAMETER_SET OBJECT COMMENT 'Parameter of the algorithm {\"param 1\":value1,...} as json-formatted string; \"Reference_System\" is mandatory',
	OPERATING_DATE DATE COMMENT 'Operating Date',
	TRAIN_NUMBER NUMBER(38,0) COMMENT 'Train Number',
	TIMESTAMP_LOCAL TIMESTAMP_NTZ(6) COMMENT 'Local Timestamp',
	TIMESTAMP_UTC TIMESTAMP_NTZ(6) COMMENT 'Coordinated Universal Time Timestamp',
	STATUS NUMBER(38,0) COMMENT 'Based on status table for Fusion Result,needs to be amended if necessary',
	TRACK_ID ARRAY COMMENT 'Array with possible track identifiers',
	MOVEMENT_DIRECTION BOOLEAN COMMENT 'Direction of movement; TRUE when driving +x, FALSE when driving -x in body frame',
	ORIENTATION BOOLEAN COMMENT 'Orientation of vehicle w.r.t. track; TRUE when body x is towards destination node, False when body x axis is towards origin node',
	TRAVELLED_DISTANCE NUMBER(10,3) COMMENT 'Cumulative, absolute, travelled distance since start of mission [m]',
	RELATIVE_DISTANCE NUMBER(10,3) COMMENT 'Relative along track distance to origin node of track [m]',
	SPEED NUMBER(6,3) COMMENT 'Absolute along track speed [m/s]',
	ACCELERATION NUMBER(6,3) COMMENT 'Change of along track speed [m/s2]',
	OVERESTIMATION_DISTANCE NUMBER(10,3) COMMENT 'Overestimation of travelled and relative distance [m]',
	UNDERESTIMATION_DISTANCE NUMBER(10,3) COMMENT 'Underestimation of travelled and relative distance\t[m]',
	OVERESTIMATION_SPEED NUMBER(6,3) COMMENT 'Overestimation of absolute along track speed [m/s]',
	UNDERESTIMATION_SPEED NUMBER(6,3) COMMENT 'Underestimation of absolute along track speed [m/s]',
	CROSS_TRACK_DISTANCE NUMBER(10,3) COMMENT 'Distance between global position and track axis [m]',
	CREATED_TIMESTAMP TIMESTAMP_NTZ(6) COMMENT 'Timestamp of the row creation'
)
COMMENT='Fusion Result - Track Bound Coordinates'
;