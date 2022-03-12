---
ns: HUD
---
## ADD_BLIP_FOR_ENTITY

```c
// 0x5CDE92C702A8FCE7 0x30822554
Blip ADD_BLIP_FOR_ENTITY(Entity entity);
```
Create a blip that for default is red (enemy), you can use the [SET_BLIP_AS_FRIENDLY](#_0xC6F43D0E) to make it blue (friend)

Example of enemy:
![enemy](https://i.imgur.com/fl78svv.png)
Example of friend:
![friend](https://i.imgur.com/Q16ho5d.png)

## Parameters
* **entity**: The entity handle to create the blip.

## Return value
A blip handle.

## Examples
```lua
local blip = AddBlipForEntity(PlayerPedId()) -- This add a enemy blip to yourself
```

```js  
const blip = AddBlipForEntity(PlayerPedId()); -- This add a enemy blip to yourself
```
