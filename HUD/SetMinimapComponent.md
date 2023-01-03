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


0: Los Santos' air port yellow lift-off markers. <br>
1: Sandy Shore's air port yellow lift-off markers. <br>
2: Trevor's air port yellow lift-off markers. <br>
3: ? <br>
4: Unused <br>
5: Unused <br>
6: Vespucci Beach lifeguard building. <br>
7: "Beam Me Up" Upper area (Alien hill in Sandy Shores). <br>
8: Paleto Bay Fire Department Tower. <br>
10: Paleto Bay Aerial Tramway station <br>
11: Electricity stuff at the Observatory. <br>
12: Roof of some building in Strawberry. <br>
13: Richman Playboy Mansion pool cave. <br>
14: "Beam Me Up" Circles (Alien hill in Sandy Shores). <br>
15: Army base. <br>


**componentIDs in the GTAV scripts:** <br>

**0-3:** stunt_plane_races.c, traffick_air.c <br>
**3:** epsilon6.c <br>
**6-14:** am_king_of_the_castle.c <br>
**15:** fake_interiors.c <br>


[List of hud colors](https://pastebin.com/d9aHPbXN)

## Parameters
* **componentID**: The component ID to change.
* **toggle**: True to enable the color, false to disable the effect.
* **hudColor**: The hudcolor index.

## Return value
