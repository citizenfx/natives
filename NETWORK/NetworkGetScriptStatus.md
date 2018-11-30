---
ns: NETWORK
---
## NETWORK_GET_SCRIPT_STATUS

```c
// 0x57D158647A6BFABF 0x2BE9235A
int NETWORK_GET_SCRIPT_STATUS();
```
If called from lua script that use resource manifest version 05cfa83c-a124-4cfa-a768-c24a5811d8f9 it apparently does nothing, because it was already called by fivem itself when script started.

But when called from lua script that use resource manifest version 44febabe-d386-4d18-afbe-5e627f4af937, for example, it changes behavior of at least those 4 natives (as far as I know, 3 of them are actually same function):
DeleteVehicle(0xEA386986E786A54F),
SetEntityAsNoLongerNeeded(0xB736A491E64A32CF),
SetPedAsNoLongerNeeded(0x2595DD4236549CE3),
SetVehicleAsNoLongerNeeded(0x629BFA74418D6239)

DeleteVehicle will require SetEntityAsMissionEntity(0xAD738C3085FE7E11) to work.
As of 2018.11.30 Set...AsNoLongerNeeded was not working without calling this native(0x57D158647A6BFABF) at least once.
SetObjectAsNoLongerNeeded(and SetEntityAsNoLongerNeeded when used on object) behaves same for some reason at least for objects I tested it with.

## Return value

Will be 0 if script wasn't network script before this native was called. Will return 2 if called second and consecutive times.
If resource manifest version 05cfa83c-a124-4cfa-a768-c24a5811d8f9 was used, it will return 2 every time.
