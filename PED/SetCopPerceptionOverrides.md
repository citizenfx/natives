---
ns: PED
aliases: ["0x2F074C904D85129E"]
---
## SET_COP_PERCEPTION_OVERRIDES

```c
// 0x2F074C904D85129E
void SET_COP_PERCEPTION_OVERRIDES(float seeingRange, float seeingRangePeripheral, float hearingRange, float visualFieldMinAzimuthAngle, float visualFieldMaxAzimuthAngle, float fieldOfGazeMaxAngle, float p6);
```

This function makes it possible to change the perception parameters of NPC Cops. Must be called every frame to take effect

```
https://alloc8or.re/gta5/nativedb/?n=0x83A169EABCDB10A2?n=0x2F074C904D85129E
```

## Parameters
* **seeingRange**: How far away a Cop can see the person they are looking for (the player).
* **seeingRangePeripheral**: How far the Peripheral Vision goes.
* **hearingRange**: How far the Cop can hear.
* **visualFieldMinAzimuthAngle**: Minimum field of view (FOV) of the cop
* **visualFieldMaxAzimuthAngle**: Maximum field of view (FOV) of the cop
* **fieldOfGazeMaxAngle**: Presumably the angle that defines the center
* **p6**: Unknown

