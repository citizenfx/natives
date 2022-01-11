---
ns: HUD
aliases: ["0x6CDD58146A436083"]
---
## _SET_USE_WAYPOINT_AS_DESTINATION

```c
// 0x6CDD58146A436083
void _SET_USE_WAYPOINT_AS_DESTINATION(BOOL toggle);
```

Sets a global mode which makes the pause menu map show 'Destination' instead of 'Waypoint' in the key legend on the
bottom of the screen.

<!--

Name guess:

  - alphabetical function order, below [SET_USER_RADIO_CONTROL_ENABLED, SET_USE_HI_DOF], above SET_VARIABLE_ON_SOUND.

-->

## Parameters
* **toggle**: `true` to show 'Destination', `false` to show 'Waypoint' (the default)

