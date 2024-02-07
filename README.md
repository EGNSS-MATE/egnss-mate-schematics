# egnss-mate-schematics

Documentation of standards used in EGNSS MATE.

# Table Standardization

## Administration

<!--start_admin-->

### S_DEVICE
Updated on 2024-02-07, 17:31:24.970963

#### Definition
| Variable | Type | Comment |
| --- | --- | --- |
| `DEVICE_ID` | INTEGER | Unique identification number for device |
| `DEVICE_TYPE` | STRING | Type of the device (DEVICE, ANTENNA, ...) |
| `DEVICE_NAME` | STRING | Name of the device |
| `DEVICE_MODEL` | STRING | Model of the device |
| `DEVICE_VERSION` | STRING | Version of the device |
| `MANUFACTURER` | STRING | Manufacturer of the device |
| `UIC` | STRING | International Union of Railways (identification number of vehicle) |
| `VALID_FROM` | TIMESTAMP_NTZ(6) | UTC date valid from |
| `VALID_TO` | TIMESTAMP_NTZ(6) | UTC date valid to |
| `QUATERNION` | OBJECT | Unit quaternions [a b c w] to boogie frame C1 and C2 |
| `TRANSLATION` | OBJECT | Translation [x y z] to boogie frame C1 and C2 |
| `COORD_SYSTEM_NAME` | STRING | Name of the coordinate reference system referenced to s_coordinate_system |
| `ANNOTATION` | STRING | Comment |

#### Comment
Parameters of the devices

### S_COORDINATE_SYSTEM
Updated on 2024-02-07, 17:31:24.926784

#### Definition
| Variable | Type | Comment |
| --- | --- | --- |
| `COORD_SYSTEM_NAME` | STRING | Name of the coordinate system |
| `EPSG` | INTEGER | EPSG code of the coordinate system according https://epsg.io/ |
| `VALID_FROM` | TIMESTAMP_NTZ(6) | UTC date valid from |
| `VALID_TO` | TIMESTAMP_NTZ(6) | UTC date valid to |

#### Comment
Definitions of the coordinate systems

## Sensors

<!--start_sensor-->

### S_IMU
Updated on 2024-02-07, 17:31:25.058315

#### Definition
| Variable | Type | Comment |
| --- | --- | --- |
| `DEVICE_ID` | INTEGER | Device identifier |
| `TIMESTAMP_LOCAL` | TIMESTAMP_NTZ(6) | Local Timestamp |
| `TIMESTAMP_UTC` | TIMESTAMP_NTZ(6) | Coordinated Universal Time Timestamp |
| `ACCELERATION_ERROR_CODE` | INTEGER | Acceleration error code |
| `ANGULAR_ERROR_CODE` | INTEGER | Angular error code |
| `SPEC_FORCE_X` | DECIMAL(8,5) | Specific Force in x direction [m/s2] |
| `SPEC_FORCE_Y` | DECIMAL(8,5) | Specific Force in y direction [m/s2] |
| `SPEC_FORCE_Z` | DECIMAL(8,5) | Specific Force in z direction [m/s2] |
| `ANG_RATE_X` | DECIMAL(8,6) | Angular rate compensated x [rad/s] |
| `ANG_RATE_Y` | DECIMAL(8,6) | Angular rate compensated y [rad/s] |
| `ANG_RATE_Z` | DECIMAL(8,6) | Angular rate compensated z [rad/s] |
| `COMPENSATED` | BOOLEAN | If calibrated and corrected for estimated errors, compensated for earth rate and gravity |
| `CORRECTED` | BOOLEAN | If calibrated and corrected for errors estimated by data fusion |
| `CREATED_TIMESTAMP` | TIMESTAMP_NTZ(6) | Timestamp of the row creation |

#### Comment
Standardization table for Inertial Measurement Unit (IMU)

## Digital Map

<!--start_dm-->

### S_DM_BALISE
Updated on 2024-02-07, 17:31:25.015353

#### Definition
| Variable | Type | Comment |
| --- | --- | --- |
| `NID_C` | INTEGER | Eurobalise Country Code  based on ETCS Subset 26 |
| `NID_BG` | INTEGER | Eurobalise Balise Group ID  based on ETCS Subset 26 |
| `N_PIG` | INTEGER | Eurobalise Position in Group ID  based on ETCS Subset 26 |
| `N_TOTAL` | INTEGER | Total number of balise(s) in the group |
| `TRACK_EDGE_ID` | STRING | Reference to track edge where the balise is located on |
| `POSITION` | DECIMAL(10,3) | Distance from start of track edge to balise |
| `CROSS_DISTANCE` | DECIMAL(10,3) | Distance from the balise to middle of the track |
| `NORTH_LV95` | DECIMAL(10,3) | Coordinate north EPSG:2056 [m] |
| `EAST_LV95` | DECIMAL(10,3) | Coordinate east EPSG:2056 [m] |
| `LATITUDE_ETRS89` | DECIMAL(12,9) | Latitude EPSG:4258 [deg] |
| `LONGITUDE_ETRS89` | DECIMAL(12,9) | Longitude EPSG:4258 [deg] |
| `VALID_FROM` | TIMESTAMP_NTZ(6) | Local date valid from |
| `VALID_TO` | TIMESTAMP_NTZ(6) | Local valid to |
| `CREATED_TIMESTAMP` | TIMESTAMP_NTZ(6) | Timestamp of the row creation |

#### Comment
Standardization table for digital map balise

## Fusion Results

<!--start_result-->
