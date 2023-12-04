---
ns: HUD
aliases: ["0xEC9264727EEC0F28"]
---
## TAKE_CONTROL_OF_FRONTEND

```c
// 0xEC9264727EEC0F28 0xC06B763D
void TAKE_CONTROL_OF_FRONTEND();
```

Disables frontend (works in both custom and regular pause menu) navigation keys on keyboard. Does not disable mouse controls. No need to call this every tick.

To enable the keys again, use [`RELEASE_CONTROL_OF_FRONTEND`](#_0x14621BB1DF14E2B2).

## Examples
```lua
-- Disable both navigation and mouse controls:

-- This disables keyboard/controller navigation
TakeControlOfFrontend()

-- This disables mouse navigation
BeginScaleformMovieMethodOnFrontend('LOCK_MOUSE_SUPPORT')
ScaleformMovieMethodAddParamInt(false) -- If mouse clicking is allowed
ScaleformMovieMethodAddParamInt(false) -- If mouse hovering is allowed
EndScaleformMovieMethod()
```