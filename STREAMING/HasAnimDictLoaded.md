---
ns: STREAMING
---
## HAS_ANIM_DICT_LOADED

```c
// 0xD031A9162D01088C 0x05E6763C
BOOL HAS_ANIM_DICT_LOADED(char* animDict);
```

Checks whether the specified animation dictionary is loaded and ready to use. Returns true once a [`REQUEST_ANIM_DICT`](#_0xD3BD40951412FEF6) call completes. This native reflects whether the dictionary is currently in memory, so it can remain true after [`REMOVE_ANIM_DICT`](#_0xF66A602F829E2A06) while the game keeps the dictionary cached. Use [`DOES_ANIM_DICT_EXIST`](#_0x2DA49C3B79856961) instead to check whether a dictionary name is valid without loading it.

## Parameters
* **animDict**: The name of the animation dictionary to check.

## Return value
True if the dictionary is loaded and ready to use, otherwise false.

## Examples
```lua
local animDict = "oddjobs@shop_robbery@rob_till"

RequestAnimDict(animDict)

-- HasAnimDictLoaded returns true once the dictionary is ready to use.
while not HasAnimDictLoaded(animDict) do
    Wait(0)
end
```

```js
const Delay = (ms) => new Promise((resolve) => setTimeout(resolve, ms));

(async () => {
    const animDict = "oddjobs@shop_robbery@rob_till";

    RequestAnimDict(animDict);

    // HasAnimDictLoaded returns true once the dictionary is ready to use.
    while (!HasAnimDictLoaded(animDict)) {
        await Delay(0);
    }
})();
```

```cs
using CitizenFX.Core;
using static CitizenFX.Core.Native.API;

string animDict = "oddjobs@shop_robbery@rob_till";

RequestAnimDict(animDict);

// HasAnimDictLoaded returns true once the dictionary is ready to use.
while (!HasAnimDictLoaded(animDict))
{
    await BaseScript.Delay(0);
}
```
