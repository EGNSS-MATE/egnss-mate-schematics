# egnss-mate-schematics

Documentation of standards used in EGNSS MATE.

# Table Standardization

## Administration

<!--start_admin-->

### S_DEVICE
Updated on 2024-02-07, 17:43:02.064399

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
Updated on 2024-02-07, 17:43:02.024224

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
Updated on 2024-02-07, 17:43:02.306169

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

### S_GNSS_INTF
Updated on 2024-02-07, 17:43:02.266096

#### Definition
| Variable | Type | Comment |
| --- | --- | --- |
| `DEVICE_ID` | INTEGER | Device identifier |
| `TIMESTAMP_LOCAL` | TIMESTAMP_NTZ(6) | Local Timestamp |
| `TIMESTAMP_UTC` | TIMESTAMP_NTZ(6) | Coordinated Universal Time Timestamp |
| `GPS_WEEK` | DECIMAL(4,0) | Global Positioning System week number since 6-Jan-1980 |
| `GPS_TOW` | DECIMAL(12,6) | Global Positioning System Time of week [s] |
| `N_JAMMING` | INTEGER | Number of radio channels affected by jamming |
| `ANTENNA` | STRING | Antenna |
| `SPOOFING` | BOOLEAN | Spoofing detected by built-in test |
| `SPOOFING_OSNMA` | BOOLEAN | Spoofing detected by Galileo OSNMA |
| `FREQ_JAMMING` | DECIMAL(11,0) | Interference frequency [Hz] |
| `BANDWIDTH_JAMMING` | DECIMAL(11,0) | Interference bandwidth [Hz] |
| `GAIN_GPS_L1_E1` | DECIMAL(4,0) | Receiver gain for GPS L1 and Galileo E1 [dB] |
| `GAIN_GLO_L1` | DECIMAL(4,0) | Receiver gain for GLONASS L1 [dB] |
| `GAIN_B1` | DECIMAL(4,0) | Receiver gain for Beidou B1 [dB] |
| `GAIN_L5_E5A_B2A` | DECIMAL(4,0) | Receiver gain for GPS L5 and Galileo E5a and Beidou B2a [dB] |
| `GAIN_L5_E5B_B2B` | DECIMAL(4,0) | Receiver gain for Galileo E5b and Beidou B2b [dB] |
| `GAIN_GPS_L2` | DECIMAL(4,0) | Receiver gain for GPS L2 [dB] |
| `GAIN_GLO_L2` | DECIMAL(4,0) | Receiver gain for GLONASS L2 [dB] |
| `CREATED_TIMESTAMP` | TIMESTAMP_NTZ(6) | Timestamp of the row creation |

#### Comment
Standardization table for Global Positioning System interference data

### S_BALISEREADER
Updated on 2024-02-07, 17:43:02.225390

#### Definition
| Variable | Type | Comment |
| --- | --- | --- |
| `DEVICE_ID` | INTEGER | Device identifier |
| `TIMESTAMP_LOCAL` | TIMESTAMP_NTZ(6) | Local Timestamp |
| `TIMESTAMP_UTC` | TIMESTAMP_NTZ(6) | Coordinated Universal Time Timestamp |
| `NID_C` | INTEGER | Numerical identifier of country or region |
| `NID_BG` | INTEGER | Numerical identifier of the balise group |
| `N_PIG` | INTEGER | Position in the group |
| `N_TOTAL` | INTEGER | Total number of balises in the balise group |
| `M_DUP` | INTEGER | Used to indicate whether the information of the balise is a duplicate of the balise before or after this one |
| `CREATED_TIMESTAMP` | TIMESTAMP_NTZ(6) | Timestamp of the row creation |

#### Comment
Standardization table for balise reader

## Digital Map

<!--start_dm-->

### S_DM_TRACKPOINT
Updated on 2024-02-07, 17:43:02.184725

#### Definition
| Variable | Type | Comment |
| --- | --- | --- |
| `TRACK_EDGE_ID` | STRING | Reference to track edge |
| `POSITION` | DECIMAL(10,3) | Distance from start of track edge to track point |
| `NORTH_LV95` | DECIMAL(10,3) | Coordinate north EPSG:2056 [m] |
| `EAST_LV95` | DECIMAL(10,3) | Coordinate east EPSG:2056 [m] |
| `HEIGHT_LV95` | DECIMAL(10,3) | Coordinate height EPSG:2056 [m] |
| `LATITUDE_ETRS89` | DECIMAL(12,9) | Latitude EPSG:4258 [deg] |
| `LONGITUDE_ETRS89` | DECIMAL(12,9) | Longitude EPSG:4258 [deg] |
| `ALTITUDE_ETRS89` | DECIMAL(10,3) | Altitude EPSG:4258 [deg] |
| `RADIUS` | DECIMAL(10,3) | Track radius [m] |
| `CANT` | DECIMAL(10,3) | Track cant (height difference between radius) [mm] |
| `GRADIENT` | DECIMAL(6,3) | Track gradient (+ upwards slope, - downwards slope) [permil] |
| `AZIMUTH_LV95` | DECIMAL(7,6) | Azimuth EPSG:2056 +/- pi [rad] |
| `AZIMUTH_ETRS89` | DECIMAL(7,6) | Azimuth EPSG:4258 +/- pi [rad] |
| `VALID_FROM` | TIMESTAMP_NTZ(6) | Local date valid from |
| `VALID_TO` | TIMESTAMP_NTZ(6) | Local valid to |
| `CREATED_TIMESTAMP` | TIMESTAMP_NTZ(6) | Timestamp of the row creation |

#### Comment
Standardization table for digital map track point

### S_DM_TRACK
Updated on 2024-02-07, 17:43:02.144696

#### Definition
| Variable | Type | Comment |
| --- | --- | --- |
| `TRACK_EDGE_ID` | STRING | Unique identifier of track edge |
| `TRACK_EDGE_NAME` | STRING | Unique name of track edge |
| `FROM_NODE_ID` | INTEGER | Unique number identifier of start node of track edge |
| `TO_NODE_ID` | INTEGER | Unique number identifier of end node of track edge |
| `LENGTH` | DECIMAL(10,3) | Length of track edge [m] |
| `TYPE` | INTEGER | Type = 0 (station track), type = 1 (track between stations), type = 2 (track on switch) |
| `VALID_FROM` | TIMESTAMP_NTZ(6) | Local date valid from |
| `VALID_TO` | TIMESTAMP_NTZ(6) | Local valid to |
| `CREATED_TIMESTAMP` | TIMESTAMP_NTZ(6) | Timestamp of the row creation |

#### Comment
Standardization table for digital map track

### S_DM_BALISE
Updated on 2024-02-07, 17:43:02.104737

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
