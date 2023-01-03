---
ns: HUD
---
## SET_MINIMAP_COMPONENT

```c
// 0x75A9A10948D1DEA6 0x419DCDC4
Any SET_MINIMAP_COMPONENT(int componentID, BOOL toggle, int hudColor);
```

This native is used to colorize certain map components like the army base at the top of the map.
Colors are being mixed, so for example using blue (HudColor: 9) on yellow lift-off markers
will result in green instead of blue, because the base color is yellow.

**A complete list of components ID:**

* 0: Los Santos' air port yellow lift-off markers. 
* 1: Sandy Shore's air port yellow lift-off markers. 
* 2: Trevor's air port yellow lift-off markers. 
* 3: ? 
* 4: Unused 
* 5: Unused 
* 6: Vespucci Beach lifeguard building. 
* 7: "Beam Me Up" Upper area (Alien hill in Sandy Shores). 
* 8: Paleto Bay Fire Department Tower. 
* 10: Paleto Bay Aerial Tramway station 
* 11: Electricity stuff at the Observatory. 
* 12: Roof of some building in Strawberry. 
* 13: Richman Playboy Mansion pool cave. 
* 14: "Beam Me Up" Circles (Alien hill in Sandy Shores). 
* 15: Army base. 

[List of hud colors](https://pastebin.com/d9aHPbXN)

## Parameters
* **componentID**: The component ID to change.
* **toggle**: True to enable the color, false to disable the effect.
* **hudColor**: The hudcolor index.

## Return value
