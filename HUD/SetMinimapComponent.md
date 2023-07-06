---
ns: HUD
---
## SET_MINIMAP_COMPONENT

```c
// 0x75A9A10948D1DEA6 0x419DCDC4
Any SET_MINIMAP_COMPONENT(int componentID, BOOL toggle, int hudColor);
```

This native is used to colorize certain map components like the army base at the top of the map.

An incomplete list of components ID:

0: Los Santos' air port yellow lift-off markers.
1: Sandy Shore's air port yellow lift-off markers.
2: Trevor's air port yellow lift-off markers.
6: Vespucci Beach lifeguard building.
15: Army base.

[List of hud colors](https://docs.fivem.net/docs/game-references/hud-colors/)

## Parameters
* **componentID**: The component ID to change.
* **toggle**: True to enable the color, false to disable the effect.
* **hudColor**: The hudcolor index.

## Return value
