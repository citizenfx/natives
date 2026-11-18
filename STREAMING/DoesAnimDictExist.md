---
ns: STREAMING
---
## DOES_ANIM_DICT_EXIST

```c
// 0x2DA49C3B79856961 0xCD31C872
BOOL DOES_ANIM_DICT_EXIST(char* animDict);
```

Checks whether the specified animation dictionary name refers to a valid dictionary. This does not load the dictionary and does not report whether it is currently in memory; use [`HAS_ANIM_DICT_LOADED`](#_0xD031A9162D01088C) for that. Useful for rejecting invalid names before calling [`REQUEST_ANIM_DICT`](#_0xD3BD40951412FEF6) or [`REMOVE_ANIM_DICT`](#_0xF66A602F829E2A06).

## Parameters
* **animDict**: The name of the animation dictionary to check.

## Return value
True if the dictionary exists, otherwise false.

## Examples
```lua
local animDict = "oddjobs@shop_robbery@rob_till"

if DoesAnimDictExist(animDict) then
    RequestAnimDict(animDict)

    while not HasAnimDictLoaded(animDict) do
        Wait(0)
    end
end
```

```js
const Delay = (ms) => new Promise((resolve) => setTimeout(resolve, ms));

(async () => {
    const animDict = "oddjobs@shop_robbery@rob_till";

    if (DoesAnimDictExist(animDict)) {
        RequestAnimDict(animDict);

        while (!HasAnimDictLoaded(animDict)) {
            await Delay(0);
        }
    }
})();
```

```cs
using CitizenFX.Core;
using static CitizenFX.Core.Native.API;

string animDict = "oddjobs@shop_robbery@rob_till";

if (DoesAnimDictExist(animDict))
{
    RequestAnimDict(animDict);

    while (!HasAnimDictLoaded(animDict))
    {
        await BaseScript.Delay(0);
    }
}
```
