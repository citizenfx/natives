---
ns: PED
---
## CREATE_PED

```c
// 0xD49F9B0955C367DE 0x0389EF71
Ped CREATE_PED(int pedType, Hash modelHash, float x, float y, float z, float heading, BOOL isNetwork, BOOL bScriptHostPed);
```

Creates a ped (biped character, pedestrian, actor) with the specified model at the specified position and heading.
This ped will initially be owned by the creating script as a mission entity, and the model should be loaded already
(e.g. using REQUEST_MODEL).

## Parameters
* **pedType**: Unused. Peds get set to CIVMALE/CIVFEMALE/etc. no matter the value specified.
* **modelHash**: The model of ped to spawn.
* **x**: Spawn coordinate X component.
* **y**: Spawn coordinate Y component.
* **z**: Spawn coordinate Z component.
* **heading**: Heading to face towards, in degrees.
* **isNetwork**: Whether to create a network object for the ped. If false, the ped exists only locally.
* **bScriptHostPed**: Whether to register the ped as pinned to the script host in the R* network model.

## Return value
A script handle (fwScriptGuid index) for the ped, or `0` if the ped failed to be created.
