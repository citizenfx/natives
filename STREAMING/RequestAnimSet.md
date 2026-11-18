---
ns: STREAMING
---
## REQUEST_ANIM_SET

```c
// 0x6EA47DAE7FAD0EED 0x2988B3FC
void REQUEST_ANIM_SET(char* animSet);
```

Starts loading the specified animation set. An animation set provides movement animations for a ped. See [`SET_PED_MOVEMENT_CLIPSET`](#_0xAF8A94EDE7712BEF).

## Parameters
* **animSet**: The name of the animation set to load, for example `move_m@drunk@moderatedrunk`.

## Examples
```lua
local clipset = "move_m@drunk@moderatedrunk"

RequestAnimSet(clipset)

while not HasAnimSetLoaded(clipset) do
    Wait(0)
end
```

```js
const Delay = (ms) => new Promise((resolve) => setTimeout(resolve, ms));

(async () => {
    const clipset = "move_m@drunk@moderatedrunk";

    RequestAnimSet(clipset);

    while (!HasAnimSetLoaded(clipset)) {
        await Delay(0);
    }
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
```
