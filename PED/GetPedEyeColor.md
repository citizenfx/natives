---
ns: PED
aliases: ["0x76BBA2CEE66D47E9"]
---
## _GET_PED_EYE_COLOR

```c
// 0x76BBA2CEE66D47E9
int _GET_PED_EYE_COLOR(Ped ped);
```

A getter for [`_SET_PED_EYE_COLOR`](#_0x50B56988B170AFDF).

## Parameters
* **ped**: The target ped

## Return value
Returns ped's eye colour, or -1 if fails to get.

## Examples

```lua
local pedEyeColour = N_0x76bba2cee66d47e9(PlayerPedId())
if pedEyeColour == 7 then
  print("Gray eyes!")
end
```
