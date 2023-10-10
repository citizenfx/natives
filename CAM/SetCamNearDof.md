---
ns: CAM
---
## SET_CAM_NEAR_DOF

```c
// 0x3FA4BF0A7AB7DE2C 0xF28254DF
void SET_CAM_NEAR_DOF(Cam cam, float nearDOF);
```

Specifies when the camera should start being in focus. Can be used together with [`SET_USE_HI_DOF`](#_0xA13B0222F3D94A94), [`SET_CAM_FAR_DOF`](#_0xEDD91296CD01AEE0), [`SET_CAM_USE_SHALLOW_DOF_MODE`](#_0x16A96863A17552BB), [`SET_CAM_DOF_STRENGTH`](#_0x5EE29B4D7D5DF897) and other DoF related natives.

## Parameters
* **cam**: The camera handle
* **nearDOF**: Distance in in standard units

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