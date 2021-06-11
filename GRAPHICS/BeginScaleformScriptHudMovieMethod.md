---
ns: GRAPHICS
aliases: ["_PUSH_SCALEFORM_MOVIE_FUNCTION_FROM_HUD_COMPONENT","_BEGIN_SCALEFORM_MOVIE_METHOD_HUD_COMPONENT"]
---
## BEGIN_SCALEFORM_SCRIPT_HUD_MOVIE_METHOD

```c
// 0x98C494FD5BDFBFD5 0x5D66CE1E
BOOL BEGIN_SCALEFORM_SCRIPT_HUD_MOVIE_METHOD(int hudComponent, char* methodName);
```

```
Pushes a function from the Hud component Scaleform onto the stack. Same behavior as GRAPHICS::BEGIN_SCALEFORM_MOVIE_METHOD, just a hud component id instead of a Scaleform.
Known components:
19 - MP_RANK_BAR
20 - HUD_DIRECTOR_MODE
This native requires more research - all information can be found inside of 'hud.gfx'. Using a decompiler, the different components are located under "scripts\__Packages\com\rockstargames\gtav\hud\hudComponents" and "scripts\__Packages\com\rockstargames\gtav\Multiplayer".
```

## Parameters
* **hudComponent**: 
* **methodName**: 

## Return value
