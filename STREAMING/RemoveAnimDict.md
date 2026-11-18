---
ns: STREAMING
---
## REMOVE_ANIM_DICT

```c
// 0xF66A602F829E2A06 0x0AE050B5
void REMOVE_ANIM_DICT(char* animDict);
```

Releases the specified animation dictionary so the game can unload it when it needs the memory. The dictionary may stay loaded after this call while the game keeps it cached, until it needs the memory elsewhere. Call this once you are done with a dictionary loaded with [`REQUEST_ANIM_DICT`](#_0xD3BD40951412FEF6).

## Parameters
* **animDict**: The name of the animation dictionary to unload.

## Examples
```lua
local animDict = "oddjobs@shop_robbery@rob_till"

RequestAnimDict(animDict)

while not HasAnimDictLoaded(animDict) do
    Wait(0)
end

RemoveAnimDict(animDict)
```

```js
const Delay = (ms) => new Promise((resolve) => setTimeout(resolve, ms));

(async () => {
    const animDict = "oddjobs@shop_robbery@rob_till";

    RequestAnimDict(animDict);

    while (!HasAnimDictLoaded(animDict)) {
        await Delay(0);
    }

    RemoveAnimDict(animDict);
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

RemoveAnimDict(animDict);
```
