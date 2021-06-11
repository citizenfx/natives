---
ns: OBJECT
---
## CREATE_OBJECT_NO_OFFSET

```c
// 0x9A294B2138ABB884 0x58040420
Object CREATE_OBJECT_NO_OFFSET(Hash modelHash, float x, float y, float z, BOOL isNetwork, BOOL netMissionEntity, BOOL doorFlag);
```

Creates an object (prop) with the specified model centered at the specified position.
This object will initially be owned by the creating script as a mission entity, and the model should be loaded already (e.g. using REQUEST_MODEL).

## Parameters
* **modelHash**: The model to spawn.
* **x**: Spawn coordinate X component.
* **y**: Spawn coordinate Y component.
* **z**: Spawn coordinate Z component.
* **isNetwork**: Whether to create a network object for the object. If false, the object exists only locally.
* **netMissionEntity**: Whether to register the object as pinned to the script host in the R* network model.
* **doorFlag**: False to create a door archetype (archetype flag bit 26 set) as a door. Required to be set to true to create door models in network mode.

## Return value
A script handle (fwScriptGuid index) for the object, or `0` if the object failed to be created.