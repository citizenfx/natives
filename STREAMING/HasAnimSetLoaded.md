---
ns: STREAMING
---
## HAS_ANIM_SET_LOADED

```c
// 0xC4EA073D86FB29B0 0x4FFF397D
BOOL HAS_ANIM_SET_LOADED(char* animSet);
```

Gets whether the specified animation set has finished loading. An animation set provides movement animations for a ped.

Animation set and clip set are synonymous. See [`SET_PED_MOVEMENT_CLIPSET`](#_0xAF8A94EDE7712BEF).

## Parameters
* **animSet**: The name of the animation set to check.

## Return value
True if the animation set is loaded and ready to use, otherwise false.

## Examples
```lua
local clipset = "move_m@drunk@moderatedrunk"

RequestAnimSet(clipset)

while not HasAnimSetLoaded(clipset) do
    Wait(0)
end

SetPedMovementClipset(PlayerPedId(), clipset, 1.0)
```

```js
const Delay = (ms) => new Promise((resolve) => setTimeout(resolve, ms));

(async () => {
    const clipset = "move_m@drunk@moderatedrunk";

    RequestAnimSet(clipset);

    while (!HasAnimSetLoaded(clipset)) {
        await Delay(0);
    }

    SetPedMovementClipset(PlayerPedId(), clipset, 1.0);
})();
```

```cs
using CitizenFX.Core;
using static CitizenFX.Core.Native.API;

string clipset = "move_m@drunk@moderatedrunk";

RequestAnimSet(clipset);

while (!HasAnimSetLoaded(clipset))
{
    await BaseScript.Delay(0);
}

SetPedMovementClipset(PlayerPedId(), clipset, 1.0f);
```
