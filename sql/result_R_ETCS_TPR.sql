CREATE TABLE IF NOT EXISTS R_ETCS_TPR (
	ALGORITHM_ID VARCHAR(16777216) COMMENT 'Algorithm identifier',
	SENSOR_SET ARRAY COMMENT 'Array[int] of device_id',
	PARAMETER_SET OBJECT COMMENT 'Parameter of the algorithm {\"param 1\":value1,...} as json-formatted string; \"Reference_System\" is mandatory',
	OPERATING_DATE DATE COMMENT 'Operating Date',
	TRAIN_NUMBER NUMBER(38,0) COMMENT 'Train Number',
	TIMESTAMP_LOCAL TIMESTAMP_NTZ(6) COMMENT 'Local Timestamp',
	TIMESTAMP_UTC TIMESTAMP_NTZ(6) COMMENT 'Coordinated Universal Time Timestamp',
	STATUS NUMBER(38,0) COMMENT 'Based on status table for Fusion Result,needs to be amended if necessary',
	NID_LRBG_C NUMBER(38,0) COMMENT 'Eurobalise Country Code of last relevant balise group',
	NID_LRBG_BG NUMBER(38,0) COMMENT 'Eurobalise Balise Group ID of last relevant balise group',
	NID_LRBG_PIG NUMBER(38,0) COMMENT 'Eurobalise Position in Group ID of last relevant balise group',
	D_LRBG NUMBER(10,3) COMMENT 'Distance between the last relevant balise group and the estimated front end of the train [m]',
	Q_DIRLRBG NUMBER(38,0) COMMENT 'Orientation of the train in relation to the direction of the last relevant balise group. 0=Reverse, 1=Nominal, 2=unkow, 3=Spare',
	Q_DLRBG NUMBER(38,0) COMMENT 'Qualifier telling on which side of the last relevant balise group the estimated front end is. 0=Reverse, 1=Nominal, 2=unkow, 3=Spare',
	Q_DIRTRAIN NUMBER(38,0) COMMENT 'Direction of train movement in relation to the last relevant balise group orientation. 0=Reverse, 1=Nominal, 2=unkow, 3=Spare',
	TRAVELLED_DISTANCE NUMBER(10,3) COMMENT 'Cumulative, absolute, travelled distance since start of mission [m]',
	SPEED NUMBER(6,3) COMMENT 'Absolute along track speed [m/s]',
	ACCELERATION NUMBER(6,3) COMMENT 'Change of along track speed [m/s2]',
	L_DOUBTOVER NUMBER(10,3) COMMENT 'Over-reading distance plus the Q_LOCACC of the last relevant balise group [m]',
	L_DOUBTUNDER NUMBER(10,3) COMMENT 'Under-reading distance plus the Q_LOCACC of the last relevant balise group [m]',
	SPEED_DOUBTOVER NUMBER(6,3) COMMENT 'Over-reading speed [m/s]',
	SPEED_DOUBTUNDER NUMBER(6,3) COMMENT 'Under-reading speed [m/s]',
	CREATED_TIMESTAMP TIMESTAMP_NTZ(6) COMMENT 'Timestamp of the row creation'
)
COMMENT='Fusion Result - Last relevant balise group (LRBG) Bound Coordinates'
;