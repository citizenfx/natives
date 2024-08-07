---
ns: VEHICLE
aliases: ["0x260BE8F09E326A20","_SET_VEHICLE_HALT"]
---
## BRING_VEHICLE_TO_HALT

```c
// 0x260BE8F09E326A20 0xCBC7D3C8
void BRING_VEHICLE_TO_HALT(Vehicle vehicle, float distance, int duration, BOOL bControlVerticalVelocity);
```

This native makes the vehicle stop immediately, as it happens when we enter a multiplayer garage.

## Parameters
* **vehicle**: The vehicle to stop.
* **distance**: The distance from the initial coords at which the vehicle should come to rest.
* **duration**: The length of time in seconds to hold the car at rest after stopping.
* **bControlVerticalVelocity**: `false` by default which allows gravity to act normally in the z direction. Enable this option to halt the vehicle's vertical velocity as well.
