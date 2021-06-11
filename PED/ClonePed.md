---
ns: PED
---
## CLONE_PED

```c
// 0xEF29A16337FACADB 0x8C8A8D6E
Ped CLONE_PED(Ped ped, cs_type(float) BOOL isNetwork, BOOL bScriptHostPed, BOOL copyHeadBlendFlag);
```

Creates a copy of the passed ped, optionally setting it as local and/or shallow-copying the head blend data.

## Parameters
* **ped**: The input ped.
* **isNetwork**: Whether or not the ped should be registered as a network object.
* **bScriptHostPed**: Script host flag.
* **copyHeadBlendFlag**: If true, head blend data is referenced, not copied.

## Return value
A new ped handle representing the ped's copy.

## Examples
```lua
-- makes a locally visible duplicate of the local player for presentation
local playerDummy = ClonePed(PlayerPedId(), false, false, true)
SetEntityCoords(playerDummy, pos.x, pos.y, pos.z)
```