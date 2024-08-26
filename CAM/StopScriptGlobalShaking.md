---
ns: CAM
aliases: ["0x1C9D7949FA533490"]
---
## STOP_SCRIPT_GLOBAL_SHAKING

```c
// 0x1C9D7949FA533490 0x26FCFB96
void STOP_SCRIPT_GLOBAL_SHAKING(BOOL bStopImmediately);
```

Stops the currently active global camera shake that was initiated by a script. You can check if a global camera shake is active using [IS_SCRIPT_GLOBAL_SHAKING](#_0xC912AF078AF19212).

```
NativeDB Introduced: v323
```

## Parameters
* **bStopImmediately**: A boolean indicating whether the camera shake should stop instantly (TRUE) or gradually fade out (FALSE).

## Examples
```lua
-- Stops the currently active global camera shake with a gradual fade out
if IsScriptGlobalShaking() then
    StopScriptGlobalShaking(false)
end
```
```js
// Stops the currently active global camera shake with a gradual fade out
if (IsScriptGlobalShaking()) {
    StopScriptGlobalShaking(false);
}
```
```cs
using static CitizenFX.Core.Native.API;

// Stops the currently active global camera shake with a gradual fade out
if (IsScriptGlobalShaking())
{
    StopScriptGlobalShaking(false);
}
```
