---
ns: NETWORK
aliases: ["0x45F35C0EDC33B03B"]
---
## _NETWORK_ADD_MAP_OBJECT_TO_SYNCHRONISED_SCENE

```c
// 0x45F35C0EDC33B03B
void _NETWORK_ADD_MAP_OBJECT_TO_SYNCHRONISED_SCENE(int netScene, Hash modelHash, float x, float y, float z, float p5, char* p6, float p7, float p8, int flags);
```

Adds a map object/entity to a synchronised scene, by specifying it's hash.

## Parameters
* **netScene**:
* **modelHash**:
* **x**:
* **y**:
* **z**:
* **p5**:
* **p6**:
* **p7**:
* **p8**:
* **flags**:

## Examples
```lua
local slotMachineCoords = vector3(1106.67, 230.59, -50.09) -- Where to look for the slot machine
local slotMachineObjectHash = `vw_prop_casino_slot_02a` -- Which slot machine to look for
local slotMachineObjectID = GetClosestObjectOfType(slotMachineCoords, 1.0, slotMachineObjectHash, false, false, false) -- ID of the found slot machine
local slotMachineObjectCoords = GetEntityCoords(slotMachineObjectID, false) -- Coords of the slot machine, this is where we'll create a synchronized scene
local animDict = 'anim_casino_a@amb@casino@games@slots@male' -- Animation dictionary to use

-- Create the synchronised scene
local netSceneID = NetworkCreateSynchronisedScene(slotMachineObjectCoords, 0.0, 0.0, GetEntityHeading(slotMachineObjectID), 2, true, false, 1.0, 0.0, 1.0)
-- Play the pull_spin_a_slotmachine animation on the slot machine object
NetworkAddMapObjectToSynchronisedScene(netSceneID, slotMachineObjectHash, slotMachineObjectCoords, animDict, 'pull_spin_a_slotmachine', 2.0, -1.5, 13)
NetworkStartSynchronisedScene(netSceneID) -- Start the synchronised scene

print('Lever pull animation started!')

while GetSynchronizedScenePhase(NetworkGetLocalSceneFromNetworkId(netSceneID)) < 1.0 do Wait(0) end -- Wait for the lever pull animation to finish

print('Lever pull animation finished!')
```