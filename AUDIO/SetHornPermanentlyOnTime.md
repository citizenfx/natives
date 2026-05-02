---
ns: AUDIO
aliases: [ "0x9D3AF56E94C9AE98" ]
---
## SET_HORN_PERMANENTLY_ON_TIME

```c
// 0x9D3AF56E94C9AE98 0x2F0A16D1
void SET_HORN_PERMANENTLY_ON_TIME(Vehicle vehicle, float time);
```

Sounds the vehicle's horn for a specified duration. The behavior of this native changes significantly depending on the occupancy of the driver's seat:

* **Empty Driver Seat:** The horn will sound continuously for the entire duration specified in the `time` parameter.
* **Occupied Driver Seat:** The `time` parameter is entirely ignored. The horn will only sound very briefly, simulating a quick tap of the horn button.
* **Interruption:** If a ped enters the driver seat while the horn is actively sounding (triggered by this native), the horn will stop immediately.

## Parameters
* **vehicle**: The target vehicle.
* **time**: The duration for the horn to sound, in milliseconds.
