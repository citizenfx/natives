---
ns: HUD
aliases: ["0xA67F9C46D612B6F1", "_SET_MP_GAMER_TAG_ICONS"]
---
## _SET_MP_GAMER_TAG_USE_VEHICLE_HEALTH

```c
// 0xA67F9C46D612B6F1 0xB01A5434
void _SET_MP_GAMER_TAG_USE_VEHICLE_HEALTH(int gamerTagId, BOOL toggle);
```

Sets the health bar of a gamer tag to show the health of the last (or current) vehicle of the ped the gamer tag is attached to.
The vehicle health value is stored separate from the player health and using it won't clear any player health overrides.


## Parameters
* **gamerTagId**: 
* **toggle**: If vehicle health should be displayed instead of player health.

