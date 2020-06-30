---
ns: STREAMING
---
## NEW_LOAD_SCENE_START

```c
// 0x212A8D0D2BABFAC2 0xDF9C38B6
BOOL NEW_LOAD_SCENE_START(float xPos, float yPos, float zPos, float xOffset, float yOffset, float zOffset, float radius, integer p7);
```


## Parameters
* **xPos**: World `x` coordinate.
* **yPos**: World `y` coordinate.
* **zPos**: World `z` coordinate.
* **xOffset**: Offset `x` coordinate.
* **yOffset**: Offset `y` coordinate.
* **zOffset**: Offset `z` coordinate.
* **radius**: Seems to be a radius, the value is 99% of the time hard coded by the scripts between `3f` and `7000f`.
* **p7**: 0, 1, 2, 3 or 4 are used in the decompiled scripts, 0 is by far the most common.

## Return value
A boolean probably true if success, the result of the native is only used 7 times in decompiled scripts of 1868 (from https://github.com/root-cause/v-decompiled-scripts) so i don't think it matter too much.

## Examples
I looked over the script and after creating a cam not far from `vLocal_43` they called this (i adapted in lua for easy understand but look at `stunt_plane_races.c` if you want) to load the scene.
```lua
function func_8(vParam0)
    return (-(Sin(vParam0.z)) * Cos(vParam0.x)), (Cos(vParam0.z) * Cos(vParam0.x)), Sin(vParam0.x)
end

Citizen.CreateThread(function()
    local vLocal_43 = vector3(1691.228, 3251.785, 44.2574)
    local vLocal_44 = vector3(2.5652, 0, -4.1481)

    if NewLoadSceneStart(vLocal_43.x, vLocal_43.y, vLocal_43.z, func_8(vLocal_44), 4500.0, 0)) then
          SetPlayerControl(PlayerId(), false, 0)
          local gameTimer = GetGameTimer()

          while not IsNewLoadSceneLoaded() and (GetGameTimer() - gameTimer < 20) do
              Citizen.Wait(0)
          end

          NewLoadSceneStop()
          SetFocusPosAndVel(vLocal_43.x, vLocal_43.y, vLocal_43.z, func_8(vLocal_44))
    end
end)
```
