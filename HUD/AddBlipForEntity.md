---
ns: HUD
---
## ADD_BLIP_FOR_ENTITY

```c
// 0x5CDE92C702A8FCE7 0x30822554
Blip ADD_BLIP_FOR_ENTITY(Entity entity);
```

Create a blip that by default is red (enemy), you can use [SET_BLIP_AS_FRIENDLY](#_0xC6F43D0E) to make it blue (friend).  
Can be used for objects, vehicles and peds.

Example of enemy:
![enemy](https://r2.fivemanage.com/qFztShHCe1bhCDvTI4vxv/Screenshot%202024-08-24%20095909.png)
Example of friend:
![friend](https://fivemanage.com/dashboard/fivem-things/images/5f54sb6siLNqGIpo9t2pC)

## Parameters
* **entity**: The entity handle to create the blip.

## Return value
A blip handle.

## Examples
```lua
local blip = AddBlipForEntity(PlayerPedId()) -- This adds an enemy blip to yourself
```

```js  
const blip = AddBlipForEntity(PlayerPedId()); // This adds an enemy blip to yourself
```
