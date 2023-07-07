---
ns: HUD
aliases: ["0x71BDB63DBAF8DA59"]
---
## SET_MINIMAP_GOLF_COURSE

```c
// 0x71BDB63DBAF8DA59 0x5133A750
void SET_MINIMAP_GOLF_COURSE(int hole);
```


Not much is known so far on what it does _exactly_.
All I know for sure is that it draws the specified hole ID on the pause menu map as well as on the mini-map/radar. This native also seems to change some other things related to the pause menu map's behaviour, for example: you can no longer set waypoints, the pause menu map starts up in a 'zoomed in' state. This native does not need to be executed every tick.

You need to center the minimap manually as well as change/lock it's zoom and angle in order for it to appear correctly on the minimap.
You'll also need to use the `GOLF` scaleform in order to get the correct minmap border to show up.

Use [`SET_MINIMAP_GOLF_COURSE_OFF()`](#_0x35EDD5B2E3FF01C0) to reset the map when you no longer want to display any golf holes (you still need to unlock zoom, position and angle of the radar manually after calling this).

## Parameters
* **hole**: The ID of the hole to draw on the map. ID starts with 1 for hole 1, 2 for hole 2, etc. 0 disables the golf map behaviour.

## Examples
```cs
// draw hole 2
SetMinimapGolfCourse(2);

// set the other minimap properties for this specific hole:
SetRadarZoom(850);
LockMinimapPosition(-1220.0f, 240.0f);
LockMinimapAngle(90);
ToggleStealthRadar(false);
SetRadarBigmapEnabled(false, false);

// Create the flag blip and set the sprite to the flag sprite.
int blip = AddBlipForCoord(-1321.98f, 158.93f, 57.8f);
SetBlipSprite(blip, 358);

// result of this code example: https://i.imgur.com/DUnUzKS.png
```

