---
ns: STREAMING
---
## REQUEST_ANIM_DICT

```c
// 0xD3BD40951412FEF6 0xDCA96950
void REQUEST_ANIM_DICT(char* animDict);
```

Starts loading the specified animation dictionary. An animation dictionary is a named collection of animations. Once loaded, its animations can be played with [`TASK_PLAY_ANIM`](#_0xEA47FE3719165B94). Use [`HAS_ANIM_DICT_LOADED`](#_0xD031A9162D01088C) to check when it has finished loading, and [`REMOVE_ANIM_DICT`](#_0xF66A602F829E2A06) to release it when you are done.

## Parameters
* **animDict**: The name of the animation dictionary to load, for example `oddjobs@shop_robbery@rob_till`.

## Examples
```lua
local animDict = "oddjobs@shop_robbery@rob_till"

RequestAnimDict(animDict)

while not HasAnimDictLoaded(animDict) do
    Wait(0)
end
```

```js
const Delay = (ms) => new Promise((resolve) => setTimeout(resolve, ms));

(async () => {
    const animDict = "oddjobs@shop_robbery@rob_till";

    RequestAnimDict(animDict);

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

while (!HasAnimDictLoaded(animDict))
{
    await BaseScript.Delay(0);
}
```
