# egnss-mate-schematics

Documentation of standards used in EGNSS MATE.

# Table Standardization

## Administration

<!--start_admin-->

## Sensors

<!--start_sensor-->

### S_IMU
Updated on 2024-02-09, 14:29:11.880128

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
Updated on 2024-02-09, 14:29:11.840208

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
Updated on 2024-02-09, 14:29:11.800367

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

## Fusion Results

<!--start_result-->
