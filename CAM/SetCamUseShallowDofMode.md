---
ns: CAM
---
## SET_CAM_USE_SHALLOW_DOF_MODE

```c
// 0x16A96863A17552BB 0x8306C256
void SET_CAM_USE_SHALLOW_DOF_MODE(Cam cam, BOOL toggle);
```

Enables or disables the usage of a shallow DOF. Needs to be set to true to use [`SET_CAM_NEAR_DOF`](#_0x3FA4BF0A7AB7DE2C), [`SET_CAM_FAR_DOF`](#_0xEDD91296CD01AEE0), etc. Doesn't need to be called every tick.

## Parameters
* **cam**: The camera handle
* **toggle**: Boolean if the camera should use a shallow depth of field or not

## Examples
```lua
-- Use a shallow depth of field
SetCamUseShallowDofMode(camera, true)

-- Set at what distance your camera should start to focus (Example: 0.7 meters)
SetCamNearDof(camera, 0.7)

-- Set at what distance your camera should stop focusing (Example: 1.3 meters)
SetCamFarDof(camera, 1.3)

-- Apply 100% of the DoF effect
SetCamDofStrength(camera, 1.0)

while DoesCamExist(camera) do
	-- Use DoF effect (needs to be called every tick)
	SetUseHiDof()

	Citizen.Wait(0)
end
```