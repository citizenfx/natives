---
ns: PED
---
## SET_PED_KEEP_TASK

```c
// 0x971D38760FBC02EF 0xA7EC79CE
void SET_PED_KEEP_TASK(Ped ped, BOOL toggle);
```
Keep the task of a given ped

## Parameters
* **ped**: The given ped
* **toggle**: Whether or not the ped will keep his task

## Examples
```lua
local hash = GetHashKey("cs_solomon")
while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
end

local ped = CreatePed(4, hash, -1027.192, -2730.865, 12.75, 110.0, false, true)
SetPedKeepTask(ped, true)
```
