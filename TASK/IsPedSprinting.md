---
ns: TASK
---
## IS_PED_SPRINTING

```c
// 0x57E457CD2C0FC168 0x4F3E0633
BOOL IS_PED_SPRINTING(Ped ped);
```
Is the ped given sprinting.

## Parameters
* **ped**: Ped id.

## Return value
Whether or not the ped is sprinting. Note that if the ped is sprinting, it will return `1` instead of `true`.

Code like this:

```lua
if IsPedSprinting(GetPlayerPed(-1)) then
  print("TRIGGERED")
end
```
will not work, instead:

```lua
if IsPedSprinting(GetPlayerPed(-1)) == 1 then
  print("TRIGGERED")
end
```
will work. I have no idea why, tested on my local server.
