---
ns: OBJECT
---
## CREATE_OBJECT

```c
// 0x509D5878EB39E842 0x2F7AA05C
Object CREATE_OBJECT(Object modelHash, float x, float y, float z, BOOL isNetwork, BOOL netMissionEntity, BOOL doorFlag);
```

Creates an object (prop) with the specified model at the specified position, offset on the Z axis by the radius of the object's model.
This object will initially be owned by the creating script as a mission entity, and the model should be loaded already (e.g. using REQUEST_MODEL).

**NOTE:** Argument 0 should be `Hash`. <!-- GAMETODO: C# ABI compat stuff? -->

## Parameters
* **modelHash**: The model to spawn.
* **x**: Spawn coordinate X component.
* **y**: Spawn coordinate Y component.
* **z**: Spawn coordinate Z component, 'ground level'.
* **isNetwork**: Whether to create a network object for the object. If false, the object exists only locally.
* **netMissionEntity**: Whether to register the object as pinned to the script host in the R* network model.
* **doorFlag**: Whether or not to create a door archetype (archetype flag bit 26 set) as a door. Required to create door models in network mode.

## Return value
A script handle (fwScriptGuid index) for the object, or `0` if the object failed to be created.