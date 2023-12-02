---
ns: CAM
---
## ANIMATED_SHAKE_CAM

```c
// 0xA2746EEAE3E577CD 0xE1168767
void ANIMATED_SHAKE_CAM(Cam cam, char* animDict, char* animName, char* p3, float amplitude);
```

Makes a camera shake with specific animation dictionary.

## Parameters
* **cam**: Cam ID
* **animDict**: Animation dictionary of this shake. Must be requested with (REQUEST_ANIM_DICT)(#_0xD3BD40951412FEF6)
* **animName**: Animation name
* **p3**: Unknown. In scripts, only "" is used
* **amplitude**: Strength of the cam shake

## Examples
```lua
RegisterCommand('viewvinewood', function()
    RequestAnimDict('shake_cam_all@') -- Request the shake animation dictionary
	
    while not HasAnimDictLoaded('shake_cam_all@') do Wait(0) end -- Wait for the dictionary to load

    local camID = CreateCam('DEFAULT_SCRIPTED_CAMERA', true)
    SetCamRot(camID, 1.07, 0.0, -26.70, 2) -- Rotate the camera to face the vinewood sign
    SetCamCoord(camID, 573.5313, 905.455, 305.432) -- Set the camera location
    AnimatedShakeCam(camID, 'shake_cam_all@', 'light', '', 0.5) -- Play the shake animation on the camera
    RemoveAnimDict('shake_cam_all@') -- Unload the dictionary

    RenderScriptCams(true, false, 3000, true, false, 0) -- Render the camera

    BeginTextCommandDisplayHelp('STRING')
    AddTextComponentSubstringPlayerName('You are now looking at the beautiful Vinewood sign.')
    EndTextCommandDisplayHelp(0, false, true, -1)
end)
```