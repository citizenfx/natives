---
ns: PED
aliases: ["0x4E90D746056E273D","_SET_PED_ILLUMINATED_CLOTHING_GLOW_INTENSITY"]
---
## _SET_PED_EMISSIVE_INTENSITY

```c
// 0x4E90D746056E273D
void _SET_PED_EMISSIVE_INTENSITY(Ped ped, float intensity);
```

This native sets the glow intensity of illuminated clothing items.

This native does **NOT** need to be executed every tick.
This native is **NOT** synced with other connected players, you will have to set the opacity on the ped on all clients individually.


Glow intensity is a value between `0.0` and `1.0`.

In some older decompiled scripts this is known as `_SET_PED_REFLECTION_INTENSITY`.
Since there's no joaat hash for this, I find `_SET_PED_ILLUMINATED_CLOTHING_GLOW_INTENSITY` more descriptive than `_SET_PED_REFLECTION_INTENSITY`.

Use [`GetPedIlluminatedClothingGlowIntensity`](#_0x1461B28A06717D68) to get the illuminated clothing glow intensity of a specific ped.

Intensity: `1.0`:
![](https://www.vespura.com/hi/i/2018-11-13_17-03_c2e23_229.png)

Intensity: `0.0`:
![](https://www.vespura.com/hi/i/2018-11-13_17-03_35c33_230.png)

**Examples code result**:
![](https://www.vespura.com/hi/i/2018-11-13_17-11_10199_232.gif)

(Direct link if embed doesn't work: [here](https://www.vespura.com/hi/i/2018-11-13_17-11_10199_232.gif))


## Parameters
* **ped**: The ped to set the glow intensity on.
* **intensity**: The glow intensity, value between `0.0` and `1.0`.

## Examples
```lua
CreateThread(function()
    local glowIntensity = 0.0
    local reverse = false
    while true do
        Wait(100)
        SetPedIlluminatedClothingGlowIntensity(PlayerPedId(), glowIntensity)
        if reverse then
            glowIntensity = glowIntensity - 0.05
            if glowIntensity < 0.0 then
                reverse = false
                glowIntensity = 0.0
            end
        else
            glowIntensity = glowIntensity + 0.05
            if glowIntensity > 1.0 then
                reverse = true
                glowIntensity = 1.0
            end
        end
    end
end)
```

```cs
private float intensity = 0.0f;
private bool reverse = false;

// Execute this function every tick (for example: Tick += OnTickFunction; in your constructor )
private async Task OnTickFunction()
{
    await Delay(100);
    SetPedIlluminatedClothingGlowIntensity(PlayerPedId(), intensity);
    if (reverse)
    {
        intensity -= 0.05f;
        if (intensity < 0.0f)
        {
            intensity = 0.0f;
            reverse = false;
        }
    }
    else
    {
        intensity += 0.05f;
        if (intensity > 1.0f)
        {
            intensity = 1.0f;
            reverse = true;
        }
    }
}
```
