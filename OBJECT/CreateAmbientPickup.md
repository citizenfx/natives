---
ns: OBJECT
---
## CREATE_AMBIENT_PICKUP

```c
// 0x673966A0C0FD7171 0x17B99CE7
Pickup CREATE_AMBIENT_PICKUP(Hash pickupHash, float posX, float posY, float posZ, int flags, int value, Hash modelHash, BOOL returnHandle, BOOL p8);
```

```
Creates a pickup corresponding to the given hash.
When a ped player passes on the pickup, it disappears by emitting a sound and trigger "CEventNetworkPlayerCollectedAmbientPickup" event client side.
You can use joaat to generate [pickup hashes](https://gist.github.com/ArdentLeKhey/09ea16dbf3f2b42c81e61839b9c98c3c) from string.
```

## Parameters
* **pickupHash**: 
* **posX**: 
* **posY**: 
* **posZ**: 
* **flags**: 
* **value**: 
* **modelHash**: 
* **returnHandle**: 
* **p8**: 

## Return value

```lua
local Coords = vector3(-836.24, -102.54, 27.18)
local Pickup = CreateAmbientPickup(`PICKUP_MONEY_VARIABLE`, Coords , 2^1, 1, 0, true, 0)
```
