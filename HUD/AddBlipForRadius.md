---
ns: HUD
---
## ADD_BLIP_FOR_RADIUS

```c
// 0x46818D79B1F7499A 0x4626756C
Blip ADD_BLIP_FOR_RADIUS(float posX, float posY, float posZ, float radius);
```


## Parameters
* **posX**: World coordinate X of the blip's center.
* **posY**: World coordinate Y of the blip's center.
* **posZ**: World coordinate Z of the blip's center.
* **radius**: Radius of the blip.

## Return value
Returns a handle for the blip created.

Create a circle blip on the minimap and pause menu map. You need to set the colour and alpha of the blip using the handle created.
