CREATE TABLE IF NOT EXISTS S_DEVICE
(
    DEVICE_ID         INTEGER COMMENT 'Unique identification number for device',
    DEVICE_TYPE       STRING COMMENT 'Type of the device (DEVICE, ANTENNA, ...)',
    DEVICE_NAME       STRING COMMENT 'Name of the device',
    DEVICE_MODEL      STRING COMMENT 'Model of the device',
    DEVICE_VERSION    STRING COMMENT 'Version of the device',
    MANUFACTURER      STRING COMMENT 'Manufacturer of the device',
    UIC               STRING COMMENT 'International Union of Railways (identification number of vehicle)',
    VALID_FROM        TIMESTAMP_NTZ(6) COMMENT 'UTC date valid from',
    VALID_TO          TIMESTAMP_NTZ(6) COMMENT 'UTC date valid to',
    QUATERNION        OBJECT COMMENT 'Unit quaternions [a b c w] to boogie frame C1 and C2',
    TRANSLATION       OBJECT COMMENT 'Translation [x y z] to boogie frame C1 and C2',
    COORD_SYSTEM_NAME STRING COMMENT 'Name of the coordinate reference system referenced to s_coordinate_system',
    ANNOTATION        STRING COMMENT 'Comment'
)
    COMMENT = 'Parameters of the devices'