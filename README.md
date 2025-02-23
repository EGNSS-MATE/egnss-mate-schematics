![](https://github.com/rehrler/egnss-mate-schematics/actions/workflows/update_readme.yml/badge.svg)

# egnss-mate-schematics

Documentation of standards used in EGNSS MATE.

# Development

# Table Standardization

:bangbang: *Attention* :bangbang:
The following part is automatically generated. Please adapt the [template](helpers/template_README.md) if you want to
add manual information.

## Administration

<!--start_admin-->

<!--start_s_vehicle-->

### S_VEHICLE
Updated on 2025-01-24, 13:19:28

#### Definition
| Variable | Type | Comment |
| --- | --- | --- |
| `UIC` | VARCHAR(16777216) | International Union of Railways (identification number of vehicle) |
| `VEHICLE` | VARCHAR(16777216) | Abbreviation of the vehicle |
| `VALID_FROM` | TIMESTAMP_NTZ(6) | Date valid from |
| `VALID_TO` | TIMESTAMP_NTZ(6) | Date alid to |

#### Comment
Vehicle by loclab

<!--end_s_vehicle-->


<!--start_s_device-->

### S_DEVICE
Updated on 2025-01-24, 13:19:28

#### Definition
| Variable | Type | Comment |
| --- | --- | --- |
| `DEVICE_ID` | NUMBER(38,0) | Unique identification number for device |
| `DEVICE_TYPE` | VARCHAR(16777216) | Type of the device (DEVICE, ANTENNA, ...) |
| `DEVICE_NAME` | VARCHAR(16777216) | Name of the device |
| `DEVICE_MODEL` | VARCHAR(16777216) | Model of the device |
| `DEVICE_VERSION` | VARCHAR(16777216) | Version of the device |
| `MANUFACTURER` | VARCHAR(16777216) | Manufacturer of the device |
| `UIC` | VARCHAR(16777216) | International Union of Railways (identification number of vehicle) |
| `VALID_FROM` | TIMESTAMP_NTZ(6) | UTC date valid from |
| `VALID_TO` | TIMESTAMP_NTZ(6) | UTC date valid to |
| `QUATERNION` | OBJECT | Unit quaternions [a b c w] to boogie frame C1 and C2 |
| `TRANSLATION` | OBJECT | Translation [x y z] to boogie frame C1 and C2 |
| `COORD_SYSTEM_NAME` | VARCHAR(16777216) | Name of the coordinate reference system referenced to s_coordinate_system |
| `COMMENT` | VARCHAR(16777216) | Comment |

#### Comment
Parameters of the devices

<!--end_s_device-->


<!--start_s_coordinate_system-->

### S_COORDINATE_SYSTEM
Updated on 2025-01-24, 13:19:28

#### Definition
| Variable | Type | Comment |
| --- | --- | --- |
| `COORD_SYSTEM_NAME` | VARCHAR(16777216) | Name of the coordinate system |
| `EPSG` | NUMBER(38,0) | EPSG code of the coordinate system according https://epsg.io/ |
| `VALID_FROM` | TIMESTAMP_NTZ(6) | UTC date valid from |
| `VALID_TO` | TIMESTAMP_NTZ(6) | UTC date alid to |

#### Comment
Definitions of the coordinate systems

<!--end_s_coordinate_system-->


<!--start_s_antenna-->

### S_ANTENNA
Updated on 2025-01-24, 13:19:28

#### Definition
| Variable | Type | Comment |
| --- | --- | --- |
| `DEVICE_ID` | NUMBER(38,0) | Unique identification number for device in table s_device |
| `ANTENNA_ID` | NUMBER(38,0) | Unique identification number for antenna (device_id in table s_device) |
| `TRAIN_ANTENNA` | VARCHAR(16777216) | Antenna of the train |
| `DEVICE_ANTENNA` | VARCHAR(16777216) | Antenna of the device |
| `VALID_FROM` | TIMESTAMP_NTZ(6) | UTC date valid from |
| `VALID_TO` | TIMESTAMP_NTZ(6) | UTC date alid to |

#### Comment
Relationship between device antenna and train antenna

<!--end_s_antenna-->


## Sensors

<!--start_device-->

<!--start_s_speedometer-->

### S_SPEEDOMETER
Updated on 2025-01-24, 13:19:28

#### Definition
| Variable | Type | Comment |
| --- | --- | --- |
| `DEVICE_ID` | NUMBER(38,0) | Device identifier |
| `TIMESTAMP_LOCAL` | TIMESTAMP_NTZ(6) | Local Timestamp |
| `TIMESTAMP_UTC` | TIMESTAMP_NTZ(6) | Coordinated Universal Time Timestamp |
| `SPEED_ERROR_CODE` | NUMBER(38,0) | Speed error code |
| `SPEED` | NUMBER(6,3) | Speed [m/s] |
| `CREATED_TIMESTAMP` | TIMESTAMP_NTZ(6) | Timestamp of the row creation |
| `RELATIVE_DISTANCE` | NUMBER(10,3) | Relative Distance between current time to previous time [m] |
| `STANDSTILL` | BOOLEAN | STANDSTILL |

#### Comment
Standardization table for Speedometer

<!--end_s_speedometer-->


<!--start_s_inssol-->

### S_INSSOL
Updated on 2025-01-24, 13:19:28

#### Definition
| Variable | Type | Comment |
| --- | --- | --- |
| `DEVICE_ID` | NUMBER(38,0) | Device identifier |
| `TIMESTAMP_LOCAL` | TIMESTAMP_NTZ(6) | Local Timestamp |
| `TIMESTAMP_UTC` | TIMESTAMP_NTZ(6) | Coordinated Universal Time Timestamp |
| `GPS_WEEK` | NUMBER(4,0) | Global Positioning System week number since 6-Jan-1980 |
| `GPS_TOW` | NUMBER(12,6) | Global Positioning System Time of week [s] |
| `ERROR_CODE` | NUMBER(38,0) | Error code |
| `NORTH_LV95` | NUMBER(10,3) | Coordinate north EPSG:2056 [m] |
| `EAST_LV95` | NUMBER(10,3) | Coordinate east EPSG:2056 [m] |
| `HEIGHT_LV95` | NUMBER(10,3) | Coordinate height EPSG:2056 [m] |
| `LATITUDE_ETRS89` | NUMBER(12,9) | Latitude EPSG:4258 [deg] |
| `LONGITUDE_ETRS89` | NUMBER(12,9) | Longitude EPSG:4258 [deg] |
| `ALTITUDE_ETRS89` | NUMBER(10,3) | Altitude EPSG:4258 [deg] |
| `VELOCITY_NORTH` | NUMBER(6,3) | Velocity nort [m/s] |
| `VELOCITY_EAST` | NUMBER(6,3) | Velocity east [m/s] |
| `VELOCITY_DOWN` | NUMBER(6,3) | Velocity down [m/s] |
| `ACC_BIAS_X` | NUMBER(8,5) | Accelerometer bias x [m/s2] |
| `ACC_BIAS_Y` | NUMBER(8,5) | Accelerometer bias y [m/s2] |
| `ACC_BIAS_Z` | NUMBER(8,5) | Accelerometer bias z [m/s2] |
| `ACC_SCALE_FACTOR_X` | NUMBER(10,9) | Accelerometer scale factor x |
| `ACC_SCALE_FACTOR_Y` | NUMBER(10,9) | Accelerometer scale factor y |
| `ACC_SCALE_FACTOR_Z` | NUMBER(10,9) | Accelerometer scale factor z |
| `ROLL` | NUMBER(7,6) | Roll [rad] |
| `PITCH` | NUMBER(7,6) | Pitch [rad] |
| `YAW` | NUMBER(7,6) | Yaw [rad] |
| `ANG_RATE_BIAS_X` | NUMBER(8,6) | Angular rate bias x [rad/s] |
| `ANG_RATE_BIAS_Y` | NUMBER(8,6) | Angular rate bias y [rad/s] |
| `ANG_RATE_BIAS_Z` | NUMBER(8,6) | Angular rate bias z [rad/s] |
| `ANG_RATE_SCALE_FACTOR_X` | NUMBER(10,9) | Angular rate scale factor x |
| `ANG_RATE_SCALE_FACTOR_Y` | NUMBER(10,9) | Angular rate scale factor y |
| `ANG_RATE_SCALE_FACTOR_Z` | NUMBER(10,9) | Angular rate scale factor z |
| `STD_DEV_NORTH` | NUMBER(10,3) | Standard deviation north [m] |
| `STD_DEV_EAST` | NUMBER(10,3) | Standard deviation east [m] |
| `STD_DEV_HEIGHT` | NUMBER(10,3) | Standard deviation height [m] |
| `STD_DEV_VELOCITY_NORTH` | NUMBER(6,3) | Standard deviation velocity north [m/s] |
| `STD_DEV_VELOCITY_EAST` | NUMBER(6,3) | Standard deviation velocity east [m/s] |
| `STD_DEV_VELOCITY_DOWN` | NUMBER(6,3) | Standard deviation velocity down [m/s] |
| `STD_DEV_ROLL` | NUMBER(8,6) | Standard deviation roll [rad] |
| `STD_DEV_PITCH` | NUMBER(8,6) | Standard deviation pitch [rad] |
| `STD_DEV_YAW` | NUMBER(8,6) | Standard deviation yaw [rad] |
| `CREATED_TIMESTAMP` | TIMESTAMP_NTZ(6) | Timestamp of the row creation |

#### Comment
Standardization table for Inertial Solution (INSSOL)

<!--end_s_inssol-->


<!--start_s_imu-->

### S_IMU
Updated on 2025-01-24, 13:19:28

#### Definition
| Variable | Type | Comment |
| --- | --- | --- |
| `DEVICE_ID` | NUMBER(38,0) | Device identifier |
| `TIMESTAMP_LOCAL` | TIMESTAMP_NTZ(6) | Local Timestamp |
| `TIMESTAMP_UTC` | TIMESTAMP_NTZ(6) | Coordinated Universal Time Timestamp |
| `ACCELERATION_ERROR_CODE` | NUMBER(38,0) | Acceleration error code |
| `ANGULAR_ERROR_CODE` | NUMBER(38,0) | Angular error code |
| `SPEC_FORCE_X` | NUMBER(8,5) | Specific Force in x direction [m/s2] |
| `SPEC_FORCE_Y` | NUMBER(8,5) | Specific Force in y direction [m/s2] |
| `SPEC_FORCE_Z` | NUMBER(8,5) | Specific Force in z direction [m/s2] |
| `ANG_RATE_X` | NUMBER(8,6) | Angular rate compensated x [rad/s] |
| `ANG_RATE_Y` | NUMBER(8,6) | Angular rate compensated y [rad/s] |
| `ANG_RATE_Z` | NUMBER(8,6) | Angular rate compensated z [rad/s] |
| `COMPENSATED` | BOOLEAN | If calibrated and corrected for estimated errors, compensated for earth rate and gravity |
| `CORRECTED` | BOOLEAN | If calibrated and corrected for errors estimated by data fusion |
| `CREATED_TIMESTAMP` | TIMESTAMP_NTZ(6) | Timestamp of the row creation |

#### Comment
Standardization table for Inertial Measurement Unit (IMU)

<!--end_s_imu-->


<!--start_s_gnss_sat-->

### S_GNSS_SAT
Updated on 2025-01-24, 13:19:28

#### Definition
| Variable | Type | Comment |
| --- | --- | --- |
| `DEVICE_ID` | NUMBER(38,0) | Device identifier |
| `TIMESTAMP_LOCAL` | TIMESTAMP_NTZ(6) | Local Timestamp |
| `TIMESTAMP_UTC` | TIMESTAMP_NTZ(6) | Coordinated Universal Time Timestamp |
| `GPS_WEEK` | NUMBER(4,0) | Global Positioning System week number since 6-Jan-1980 |
| `GPS_TOW` | NUMBER(12,6) | Global Positioning System Time of week [s] |
| `SAT_ID` | VARCHAR(16777216) | Satellite Vehicle Id |
| `SIGNAL_TYPE` | VARCHAR(16777216) | Signal type |
| `LOCK_TIME` | NUMBER(10,0) | Duration of continuous carrier phase [s] |
| `CN0` | NUMBER(6,3) | Carrier-to-Noise Power Density (C/N0) [dB-Hz] |
| `PSEUDORANGE` | NUMBER(16,6) | Pseudorange [m] |
| `STD_DEV_PSEUDORANGE` | NUMBER(16,6) | Standard deviation pseudorange [m] |
| `DOPPLER` | NUMBER(10,6) | Doppler [Hz] |
| `CARRIER_PHASE` | NUMBER(16,6) | Carrier phase [cyc] |
| `STD_DEV_CARRIER_PHASE` | NUMBER(16,6) | Standard deviation carrier phase [cyc] |
| `AZIMUTH` | NUMBER(6,5) | Azimuth [0, 2pi] [rad] |
| `ELEVATION` | NUMBER(6,5) | Elevation [0, pi/2] [rad] |
| `TRACKING_STATUS` | BOOLEAN | Tracking status |
| `PVT_STATUS` | BOOLEAN | PVT status |
| `ERROR` | BOOLEAN | Error flag |
| `CREATED_TIMESTAMP` | TIMESTAMP_NTZ(6) | Timestamp of the row creation |
| `ANTENNA` | VARCHAR(16777216) | Antenna |

#### Comment
Standardization table for Global Positioning System satellite information

<!--end_s_gnss_sat-->


<!--start_s_gnss_pvt-->

### S_GNSS_PVT
Updated on 2025-01-24, 13:19:28

#### Definition
| Variable | Type | Comment |
| --- | --- | --- |
| `DEVICE_ID` | NUMBER(38,0) | Device identifier |
| `TIMESTAMP_LOCAL` | TIMESTAMP_NTZ(6) | Local Timestamp |
| `TIMESTAMP_UTC` | TIMESTAMP_NTZ(6) | Coordinated Universal Time Timestamp |
| `GPS_WEEK` | NUMBER(4,0) | Global Positioning System week number since 6-Jan-1980 |
| `GPS_TOW` | NUMBER(12,6) | Global Positioning System Time of week [s] |
| `ERROR_CODE` | NUMBER(38,0) | Error code |
| `NORTH_LV95` | NUMBER(10,3) | Coordinate north EPSG:2056 [m] |
| `EAST_LV95` | NUMBER(10,3) | Coordinate east EPSG:2056 [m] |
| `HEIGHT_LV95` | NUMBER(10,3) | Coordinate height EPSG:2056 [m] |
| `LATITUDE_ETRS89` | NUMBER(12,9) | Latitude EPSG:4258 [deg] |
| `LONGITUDE_ETRS89` | NUMBER(12,9) | Longitude EPSG:4258 [deg] |
| `ALTITUDE_ETRS89` | NUMBER(10,3) | Altitude EPSG:4258 [deg] |
| `STD_DEV_NORTH` | NUMBER(10,3) | Standard deviation north [m] |
| `STD_DEV_EAST` | NUMBER(10,3) | Standard deviation east [m] |
| `STD_DEV_HEIGHT` | NUMBER(10,3) | Standard deviation high [m] |
| `VELOCITY_NORTH` | NUMBER(6,3) | Velocity nort [m/s] |
| `VELOCITY_EAST` | NUMBER(6,3) | Velocity east [m/s] |
| `VELOCITY_DOWN` | NUMBER(6,3) | Velocity down [m/s] |
| `STD_DEV_VELOCITY_NORTH` | NUMBER(6,3) | Standard deviation Velocity nort [m/s] |
| `STD_DEV_VELOCITY_EAST` | NUMBER(6,3) | Standard deviation Velocity east [m/s] |
| `STD_DEV_VELOCITY_DOWN` | NUMBER(6,3) | Standard deviation Velocity down [m/s] |
| `UNDULATION` | NUMBER(26,18) | Undulation |
| `POS_DILUTION_OF_PRECISION` | NUMBER(26,18) | Position of dilution of precision |
| `QUALITY` | NUMBER(38,0) | Quality of PVT |
| `USED_SATS` | NUMBER(38,0) | Number of satellite vehicles used |
| `TRACKED_SATS` | NUMBER(38,0) | Number of satellite vehicles tracked |
| `CORRECTION_AGE_RECEIVED` | NUMBER(9,3) | Duration of the last NTRIP correction [s] |
| `CREATED_TIMESTAMP` | TIMESTAMP_NTZ(6) | Timestamp of the row creation |

#### Comment
Standardization table for Global Positioning System position, velocity, time (GNSS-PVT)

<!--end_s_gnss_pvt-->


<!--start_s_gnss_intf-->

### S_GNSS_INTF
Updated on 2025-01-24, 13:19:28

#### Definition
| Variable | Type | Comment |
| --- | --- | --- |
| `DEVICE_ID` | NUMBER(38,0) | Device identifier |
| `TIMESTAMP_LOCAL` | TIMESTAMP_NTZ(6) | Local Timestamp |
| `TIMESTAMP_UTC` | TIMESTAMP_NTZ(6) | Coordinated Universal Time Timestamp |
| `GPS_WEEK` | NUMBER(4,0) | Global Positioning System week number since 6-Jan-1980 |
| `GPS_TOW` | NUMBER(12,6) | Global Positioning System Time of week [s] |
| `N_JAMMING` | NUMBER(38,0) | Number of radio channels affected by jamming |
| `ANTENNA` | VARCHAR(16777216) | Antenna |
| `SPOOFING` | BOOLEAN | Spoofing detected by built-in test |
| `SPOOFING_OSNMA` | BOOLEAN | Spoofing detected by Galileo OSNMA |
| `FREQ_JAMMING` | NUMBER(11,0) | Interference frequency [Hz] |
| `BANDWIDTH_JAMMING` | NUMBER(11,0) | Interference bandwidth [Hz] |
| `GAIN_GPS_L1_E1` | NUMBER(4,0) | Receiver gain for GPS L1 and Galileo E1 [dB] |
| `GAIN_GLO_L1` | NUMBER(4,0) | Receiver gain for GLONASS L1 [dB] |
| `GAIN_B1` | NUMBER(4,0) | Receiver gain for Beidou B1 [dB] |
| `GAIN_L5_E5A_B2A` | NUMBER(4,0) | Receiver gain for GPS L5 and Galileo E5a and Beidou B2a [dB] |
| `GAIN_L5_E5B_B2B` | NUMBER(4,0) | Receiver gain for Galileo E5b and Beidou B2b [dB] |
| `GAIN_GPS_L2` | NUMBER(4,0) | Receiver gain for GPS L2 [dB] |
| `GAIN_GLO_L2` | NUMBER(4,0) | Receiver gain for GLONASS L2 [dB] |
| `CREATED_TIMESTAMP` | TIMESTAMP_NTZ(6) | Timestamp of the row creation |

#### Comment
Standardization table for Global Positioning System interference data

<!--end_s_gnss_intf-->


<!--start_s_balisereader-->

### S_BALISEREADER
Updated on 2025-01-24, 13:19:28

#### Definition
| Variable | Type | Comment |
| --- | --- | --- |
| `DEVICE_ID` | NUMBER(38,0) | Device identifier |
| `TIMESTAMP_LOCAL` | TIMESTAMP_NTZ(6) | Local Timestamp |
| `TIMESTAMP_UTC` | TIMESTAMP_NTZ(6) | Coordinated Universal Time Timestamp |
| `NID_C` | NUMBER(38,0) | Numerical identifier of country or region |
| `NID_BG` | NUMBER(38,0) | Numerical identifier of the balise group |
| `N_PIG` | NUMBER(38,0) | Position in the group |
| `N_TOTAL` | NUMBER(38,0) | Total number of balises in the balise group |
| `M_DUP` | NUMBER(38,0) | Used to indicate whether the information of the balise is a duplicate of the balise before or after this one |
| `CREATED_TIMESTAMP` | TIMESTAMP_NTZ(6) | Timestamp of the row creation |

#### Comment
Standardization table for balise reader

<!--end_s_balisereader-->


## Digital Map

<!--start_dm-->

<!--start_s_dm_track_linear_element-->

### S_DM_TRACK_LINEAR_ELEMENT
Updated on 2025-01-24, 13:19:28

#### Definition
| Variable | Type | Comment |
| --- | --- | --- |
| `TRACK_EDGE_ID` | VARCHAR(16777216) | Reference to track edge |
| `NUMBER_OF_POINTS` | NUMBER(38,0) | Number of 10m points |
| `LIST_POSITION` | ARRAY | List with the position of the 10m points from s_dm_trackpoint [m] |
| `LIST_POINTS` | ARRAY | List with the coordinate of the 10m points from s_dm_trackpoint EPSG:2056 [m] |
| `GEOMETRY_LENGTH` | NUMBER(10,3) | Length of the geometry object  [m] |
| `WKT_LV95` | VARCHAR(16777216) | WKT (Well-known text) object as one linestring of the 10m points from s_dm_trackpoint EPSG:2056 [m] |
| `GEOMETRY_LV95` | GEOMETRY | Geometry object as one linestring of the 10m points from s_dm_trackpoint EPSG:2056 [m] |
| `VALID_FROM` | TIMESTAMP_NTZ(6) | Local date valid from |
| `VALID_TO` | TIMESTAMP_NTZ(6) | Local valid to |
| `CREATED_TIMESTAMP` | TIMESTAMP_NTZ(6) | Timestamp of the row creation |

#### Comment
Standardization table for digital map track as geometry object

<!--end_s_dm_track_linear_element-->


<!--start_s_dm_trackpoint-->

### S_DM_TRACKPOINT
Updated on 2025-01-24, 13:19:28

#### Definition
| Variable | Type | Comment |
| --- | --- | --- |
| `TRACK_EDGE_ID` | VARCHAR(16777216) | Reference to track edge |
| `POSITION` | NUMBER(10,3) | Distance from start of track edge to track point |
| `NORTH_LV95` | NUMBER(10,3) | Coordinate north EPSG:2056 [m] |
| `EAST_LV95` | NUMBER(10,3) | Coordinate east EPSG:2056 [m] |
| `HEIGHT_LV95` | NUMBER(10,3) | Coordinate height EPSG:2056 [m] |
| `LATITUDE_ETRS89` | NUMBER(12,9) | Latitude EPSG:4258 [deg] |
| `LONGITUDE_ETRS89` | NUMBER(12,9) | Longitude EPSG:4258 [deg] |
| `ALTITUDE_ETRS89` | NUMBER(10,3) | Altitude EPSG:4258 [deg] |
| `RADIUS` | NUMBER(10,3) | Track radius [m] |
| `CANT` | NUMBER(10,3) | Track cant (height difference berween radius) [mm] |
| `GRADIENT` | NUMBER(6,3) | Track gradient (+ upwards slope, - downwards slope) [permille] |
| `AZIMUTH_LV95` | NUMBER(7,6) | Azimuth EPSG:2056 +/- pi [rad] |
| `AZIMUTH_ETRS89` | NUMBER(7,6) | Azimuth EPSG:4258 +/- pi [rad] |
| `VALID_FROM` | TIMESTAMP_NTZ(6) | Local date valid from |
| `VALID_TO` | TIMESTAMP_NTZ(6) | Local valid to |
| `CREATED_TIMESTAMP` | TIMESTAMP_NTZ(6) | Timestamp of the row creation |

#### Comment
Standardization table for digital map track point

<!--end_s_dm_trackpoint-->


<!--start_s_dm_track-->

### S_DM_TRACK
Updated on 2025-01-24, 13:19:28

#### Definition
| Variable | Type | Comment |
| --- | --- | --- |
| `TRACK_EDGE_ID` | VARCHAR(16777216) | Unique identifier of track edge |
| `TRACK_EDGE_NAME` | VARCHAR(16777216) | Unique name of track edge |
| `FROM_NODE_ID` | NUMBER(38,0) | Unique number identifier of start node of track edge |
| `TO_NODE_ID` | NUMBER(38,0) | Unique number identifier of end node of track edge |
| `LENGTH` | NUMBER(10,3) | Length of track edge [m] |
| `TYPE` | NUMBER(38,0) | Type = 0 (station track), type = 1 (track between stations), type = 2 (track on switch) |
| `VALID_FROM` | TIMESTAMP_NTZ(6) | Local date valid from |
| `VALID_TO` | TIMESTAMP_NTZ(6) | Local valid to |
| `CREATED_TIMESTAMP` | TIMESTAMP_NTZ(6) | Timestamp of the row creation |

#### Comment
Standardization table for digital map track

<!--end_s_dm_track-->


<!--start_s_dm_balise-->

### S_DM_BALISE
Updated on 2025-01-24, 13:19:28

#### Definition
| Variable | Type | Comment |
| --- | --- | --- |
| `NID_C` | NUMBER(38,0) | Eurobalise Country Codecode  based on ETCS Subset 26 |
| `NID_BG` | NUMBER(38,0) | Eurobalise Balise Group ID  based on ETCS Subset 26 |
| `N_PIG` | NUMBER(38,0) | Eurobalise Position in Group ID  based on ETCS Subset 26 |
| `N_TOTAL` | NUMBER(38,0) | Total number of balise(s) in the group |
| `TRACK_EDGE_ID` | VARCHAR(16777216) | Reference to track edge where the balise is located on |
| `BALISE_TYPE` | VARCHAR(16777216) | Type of balise |
| `SLEEPER_TYPE` | VARCHAR(16777216) | Type of sleeper |
| `POSITION` | NUMBER(10,3) | Distance from start of track edge to balise |
| `CROSS_DISTANCE` | NUMBER(10,3) | Distance from the balise to middle of the track |
| `NORTH_LV95` | NUMBER(10,3) | Coordinate north EPSG:2056 [m] |
| `EAST_LV95` | NUMBER(10,3) | Coordinate east EPSG:2056 [m] |
| `LATITUDE_ETRS89` | NUMBER(12,9) | Latitude EPSG:4258 [deg] |
| `LONGITUDE_ETRS89` | NUMBER(12,9) | Longitude EPSG:4258 [deg] |
| `VALID_FROM` | TIMESTAMP_NTZ(6) | Local date valid from |
| `VALID_TO` | TIMESTAMP_NTZ(6) | Local valid to |
| `CREATED_TIMESTAMP` | TIMESTAMP_NTZ(6) | Timestamp of the row creation |

#### Comment
Standardization table for digital map balise

<!--end_s_dm_balise-->


## Train Route

<!--start_train-->

<!--start_s_train_route_linear_element-->

### S_TRAIN_ROUTE_LINEAR_ELEMENT
Updated on 2025-01-24, 13:19:29

#### Definition
| Variable | Type | Comment |
| --- | --- | --- |
| `OPERATING_DATE` | DATE | Operating_date |
| `TRAIN_NUMBER` | NUMBER(38,0) | Train_number |
| `NUMBER_OF_TRACKS` | NUMBER(38,0) | Number of tracks |
| `LIST_TRACK_ID` | ARRAY | List with the track edge identifier |
| `LIST_TRACK_LENGTH` | ARRAY | List with the track edge length (the true arc len) [m] |
| `LIST_POSITION_AT_TRACK_START` | ARRAY | List with the track position at the start from the route [m] |
| `LIST_POSITION_AT_TRACK_END` | ARRAY | List with the track position at the end from the route [m] |
| `GAP` | BOOLEAN | True if the route contains gaps |
| `LIST_GAP_BEFORE` | ARRAY | List with interruption indicator before the track |
| `LIST_GAP_AFTER` | ARRAY | List with interruption indicator after the track |
| `TURNAROUND` | BOOLEAN | True if the route contains turnarounds |
| `LIST_TURNAROUND_TRACK` | ARRAY | List with train turnarounds indicator on the track |
| `ROUTE_LENGTH` | NUMBER(10,3) | Total length (the true arc len) of the track route [m] |
| `GEOMETRY_LENGTH` | NUMBER(10,3) | Length of the geometry object [m] |
| `WKT_LV95` | VARCHAR(16777216) | WKT (Well-known text) object as a mulitlinestring of the track route EPSG:2056 [m] |
| `GEOMETRY_LV95` | GEOMETRY | Geometry object as a mulitlinestring of the track route EPSG:2056 [m] |
| `CREATED_TIMESTAMP` | TIMESTAMP_NTZ(6) | Timestamp of the row creation |

#### Comment
Standardization table for digital map track as geometry object

<!--end_s_train_route_linear_element-->


<!--start_s_train_route-->

### S_TRAIN_ROUTE
Updated on 2025-01-24, 13:19:28

#### Definition
| Variable | Type | Comment |
| --- | --- | --- |
| `OPERATING_DATE` | DATE | Operating_date |
| `TRAIN_NUMBER` | NUMBER(38,0) | Train_number |
| `UIC` | VARCHAR(16777216) | International union of railways unique number of vehicle |
| `ROUTE_START_TIME` | TIMESTAMP_NTZ(6) | Start time route |
| `ROUTE_END_TIME` | TIMESTAMP_NTZ(6) | End time on route |
| `TRACK_EDGE_ORDER` | NUMBER(38,0) | Order of track edge on route |
| `TRACK_EDGE_ID` | VARCHAR(16777216) | Reference to track edge |
| `TRAIN_TRACK_ORIENTATION` | NUMBER(38,0) | Direction of train travel to the track edge direction (1=in the same direction, -1=against the track direction) |
| `CREATED_TIMESTAMP` | TIMESTAMP_NTZ(6) | Timestamp of the row creation |

#### Comment
Standardization table for train route

<!--end_s_train_route-->


## Fusion Results

<!--start_result-->

<!--start_r_track-->

### R_TRACK
Updated on 2025-01-24, 13:19:28

#### Definition
| Variable | Type | Comment |
| --- | --- | --- |
| `ALGORITHM_ID` | VARCHAR(16777216) | Algorithm identifier |
| `SENSOR_SET` | ARRAY | Array[int] of device_id |
| `PARAMETER_SET` | OBJECT | Parameter of the algorithm {\"param 1\":value1,...} as json-formatted string; \"Reference_System\" is mandatory |
| `OPERATING_DATE` | DATE | Operating Date |
| `TRAIN_NUMBER` | NUMBER(38,0) | Train Number |
| `TIMESTAMP_LOCAL` | TIMESTAMP_NTZ(6) | Local Timestamp |
| `TIMESTAMP_UTC` | TIMESTAMP_NTZ(6) | Coordinated Universal Time Timestamp |
| `STATUS` | NUMBER(38,0) | Based on status table for Fusion Result,needs to be amended if necessary |
| `TRACK_ID` | ARRAY | Array with possible track identifiers |
| `MOVEMENT_DIRECTION` | BOOLEAN | Direction of movement; TRUE when driving +x, FALSE when driving -x in body frame |
| `ORIENTATION` | BOOLEAN | Orientation of vehicle w.r.t. track; TRUE when body x is towards destination node, False when body x axis is towards origin node |
| `TRAVELLED_DISTANCE` | NUMBER(10,3) | Cumulative, absolute, travelled distance since start of mission [m] |
| `RELATIVE_DISTANCE` | NUMBER(10,3) | Relative along track distance to origin node of track [m] |
| `SPEED` | NUMBER(6,3) | Absolute along track speed [m/s] |
| `ACCELERATION` | NUMBER(6,3) | Change of along track speed [m/s2] |
| `OVERESTIMATION_DISTANCE` | NUMBER(10,3) | Overestimation of travelled and relative distance [m] |
| `UNDERESTIMATION_DISTANCE` | NUMBER(10,3) | Underestimation of travelled and relative distance\t[m] |
| `OVERESTIMATION_SPEED` | NUMBER(6,3) | Overestimation of absolute along track speed [m/s] |
| `UNDERESTIMATION_SPEED` | NUMBER(6,3) | Underestimation of absolute along track speed [m/s] |
| `CROSS_TRACK_DISTANCE` | NUMBER(10,3) | Distance between global position and track axis [m] |
| `CREATED_TIMESTAMP` | TIMESTAMP_NTZ(6) | Timestamp of the row creation |

#### Comment
Fusion Result - Track Bound Coordinates

<!--end_r_track-->


<!--start_r_global-->

### R_GLOBAL
Updated on 2025-01-24, 13:19:28

#### Definition
| Variable | Type | Comment |
| --- | --- | --- |
| `ALGORITHM_ID` | VARCHAR(16777216) | Algorithm identifier |
| `SENSOR_SET` | ARRAY | Array[int] of device_id |
| `PARAMETER_SET` | OBJECT | Parameter of the algorithm {\"param 1\":value1,...} as json-formatted string; \"Reference_System\" is mandatory |
| `OPERATING_DATE` | DATE | Operating Date |
| `TRAIN_NUMBER` | NUMBER(38,0) | Train Number |
| `TIMESTAMP_LOCAL` | TIMESTAMP_NTZ(6) | Local Timestamp |
| `TIMESTAMP_UTC` | TIMESTAMP_NTZ(6) | Coordinated Universal Time Timestamp |
| `STATUS` | NUMBER(38,0) | Based on status table for Fusion Result, needs to be amended if necessary |
| `NORTH_LV95` | NUMBER(10,3) | Coordinate north EPSG:2056 [m] |
| `EAST_LV95` | NUMBER(10,3) | Coordinate east EPSG:2056 [m] |
| `HEIGHT_LV95` | NUMBER(10,3) | Coordinate height EPSG:2056 [m] |
| `LATITUDE_ETRS89` | NUMBER(12,9) | Latitude EPSG:4258 [deg] |
| `LONGITUDE_ETRS89` | NUMBER(12,9) | Longitude EPSG:4258 [deg] |
| `ALTITUDE_ETRS89` | NUMBER(10,3) | Altitude EPSG:4258 [m] |
| `VELOCITY_NORTH` | NUMBER(6,3) | Velocity north [m/s] |
| `VELOCITY_EAST` | NUMBER(6,3) | Velocity east [m/s] |
| `VELOCITY_DOWN` | NUMBER(6,3) | Velocity down [m/s] |
| `ACC_X` | NUMBER(8,5) | Acceleration x [m/s2] in body frame |
| `ACC_Y` | NUMBER(8,5) | Acceleration y [m/s2] in body frame |
| `ACC_Z` | NUMBER(8,5) | Acceleration z [m/s2] in body frame |
| `ROLL` | NUMBER(7,6) | Roll [rad] of extrinsic Euler angles RPY representing the rotational part of transformation from body frame to NED or ENU (project specific) |
| `PITCH` | NUMBER(7,6) | Pitch [rad] of extrinsic Euler angles RPY representing the rotational part of transformation from body frame to NED or ENU (project specific) |
| `YAW` | NUMBER(7,6) | Yaw [rad] of extrinsic Euler angles RPY representing the rotational part of transformation from body frame to NED or ENU (project specific) |
| `ANG_RATE_X` | NUMBER(8,6) | Angular rate x [rad/s] in body frame |
| `ANG_RATE_Y` | NUMBER(8,6) | Angular rate y [rad/s] in body frame |
| `ANG_RATE_Z` | NUMBER(8,6) | Angular rate z [rad/s] in body frame |
| `STD_DEV_NORTH` | NUMBER(10,3) | Standard deviation north [m] |
| `STD_DEV_EAST` | NUMBER(10,3) | Standard deviation east [m] |
| `STD_DEV_HEIGHT` | NUMBER(10,3) | Standard deviation height [m] |
| `STD_DEV_VELOCITY_NORTH` | NUMBER(6,3) | Standard deviation velocity north [m/s] |
| `STD_DEV_VELOCITY_EAST` | NUMBER(6,3) | Standard deviation velocity east [m/s] |
| `STD_DEV_VELOCITY_DOWN` | NUMBER(6,3) | Standard deviation velocity down [m/s] |
| `STD_DEV_ROLL` | NUMBER(8,6) | Standard deviation roll [rad] |
| `STD_DEV_PITCH` | NUMBER(8,6) | Standard deviation pitch [rad] |
| `STD_DEV_YAW` | NUMBER(8,6) | Standard deviation yaw [rad] |
| `USED_SATS` | NUMBER(38,0) | Number of satellite vehicles used |
| `TRACKED_SATS` | NUMBER(38,0) | Number of satellite vehicles tracked |
| `SPEED` | NUMBER(6,3) | Absolute along track speed [m/s] |
| `STD_DEV_SPEED` | NUMBER(6,3) | Standard deviation speed [m/s] |
| `MOVEMENT_DIRECTION` | BOOLEAN | TRUE when driving +x, FALSE when driving -x in body frame |
| `CREATED_TIMESTAMP` | TIMESTAMP_NTZ(6) | Timestamp of the row creation |
| `VELOCITY_X` | NUMBER(6,3) | Velocity x in body frame [m/s] |
| `VELOCITY_Y` | NUMBER(6,3) | Velocity y in body frame [m/s] |
| `VELOCITY_Z` | NUMBER(6,3) | Velocity z in body frame [m/s] |

#### Comment
Fusion Result - Global Coordinates

<!--end_r_global-->


<!--start_r_error-->

### R_ERROR
Updated on 2025-01-24, 13:19:28

#### Definition
| Variable | Type | Comment |
| --- | --- | --- |
| `ALGORITHM_ID` | VARCHAR(16777216) | Algorithm identifier |
| `SENSOR_SET` | ARRAY | Array of device_id |
| `PARAMETER_SET` | OBJECT | Parameter of the algorithm {\"param 1\":value1,...} |
| `OPERATING_DATE` | DATE | Operating_date |
| `TRAIN_NUMBER` | NUMBER(38,0) | Train_number |
| `START_TIMESTAMP_LOCAL` | TIMESTAMP_NTZ(6) | Start error range in Local Timestamp |
| `START_TIMESTAMP_UTC` | TIMESTAMP_NTZ(6) | Start error range in Universal Time Timestamp |
| `END_TIMESTAMP_LOCAL` | TIMESTAMP_NTZ(6) | End error range in Local Timestamp |
| `END_TIMESTAMP_UTC` | TIMESTAMP_NTZ(6) | End error range in Coordinated Universal Time Timestamp |
| `STATUS` | NUMBER(38,0) | Based on status table for Fusion Result,needs to be amended if necessary |
| `SEQUENCE_NUMBER` | NUMBER(38,0) | Error sequence number of a train run |
| `ERROR_DESCRIPTION` | VARCHAR(16777216) | Error description |
| `ERROR_VALUE` | VARCHAR(16777216) | Error value |
| `CREATED_TIMESTAMP` | TIMESTAMP_NTZ(6) | Timestamp of the row creation |

#### Comment
Fusion Error

<!--end_r_error-->

