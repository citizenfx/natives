---
ns: PED
---
## IS_PED_INJURED

```c
// 0x84A2DD9AC37C35C1 0x2530A087
BOOL IS_PED_INJURED(Ped ped);
```

```
Get 1 or false if PED is Injured.
```

## Parameters
* **ped**: 

## Return value
1 or false

## Examples
```lua
while true do
    Citizen.Wait(1);
    print("Ped Injured: " .. tostring(IsPedInjured(PlayerPedId())));
end
```