---
ns: STREAMING
---
## REMOVE_ANIM_SET

```c
// 0x16350528F93024B3 0xD04A817A
void REMOVE_ANIM_SET(char* animSet);
```

Unloads the specified animation set. An animation set provides movement animations for a ped.

Animation set and clip set are synonymous. See [`SET_PED_MOVEMENT_CLIPSET`](#_0xAF8A94EDE7712BEF).

## Parameters
* **animSet**: The name of the animation set to unload.

## Examples
```lua
local clipset = "move_m@drunk@moderatedrunk"

RequestAnimSet(clipset)

while not HasAnimSetLoaded(clipset) do
    Wait(0)
end

RemoveAnimSet(clipset)
```

```js
const Delay = (ms) => new Promise((resolve) => setTimeout(resolve, ms));

(async () => {
    const clipset = "move_m@drunk@moderatedrunk";

    RequestAnimSet(clipset);

    while (!HasAnimSetLoaded(clipset)) {
        await Delay(0);
    }

    RemoveAnimSet(clipset);
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

RemoveAnimSet(clipset);
```
