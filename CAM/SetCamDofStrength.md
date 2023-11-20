---
ns: CAM
---
## SET_CAM_DOF_STRENGTH

```c
// 0x5EE29B4D7D5DF897 0x3CC4EB3F
void SET_CAM_DOF_STRENGTH(Cam cam, float dofStrength);
```

Specifies how much the DoF effect should be applied (Set using [`SET_CAM_NEAR_DOF`](#_0x3FA4BF0A7AB7DE2C), [`SET_CAM_FAR_DOF`](#_0xEDD91296CD01AEE0), etc.)

## Parameters
* **cam**: The camera handle
* **dofStrength**: Depth of Field strength (between 0.0 and 1.0)

## Examples
```lua
CreateThread(function()
    local camera = CreateCam("DEFAULT_SCRIPTED_FLY_CAMERA", true)
    -- Set the cam coordinates to the player coords
    local playerCoords = GetEntityCoords(PlayerPedId())
    SetCamCoord(camera, playerCoords)
    -- Render the camera we just created
    RenderScriptCams(true)
    -- Use a shallow depth of field
    SetCamUseShallowDofMode(camera, true)
    -- Set at what distance your camera should start to focus (Example: 0.7 meters)
    SetCamNearDof(camera, 0.7)
    -- Set at what distance your camera should stop focusing (Example: 1.3 meters)
    SetCamFarDof(camera, 1.3)
    -- Apply 100% of the DoF effect (The native you're reading documentation on)
    SetCamDofStrength(camera, 1.0)

    while DoesCamExist(camera) do
        -- Use DoF effect (needs to be called every tick)
        SetUseHiDof()
        Citizen.Wait(0)  
    end
end)
```
