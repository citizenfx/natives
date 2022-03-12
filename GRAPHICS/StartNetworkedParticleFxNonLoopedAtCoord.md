---
ns: GRAPHICS
aliases: ["_START_PARTICLE_FX_NON_LOOPED_AT_COORD_2"]
---
## START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD

```c
// 0xF56B8137DF10135D 0x633F8C48
BOOL START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD(char* effectName, float xPos, float yPos, float zPos, float xRot, float yRot, float zRot, float scale, BOOL xAxis, BOOL yAxis, BOOL zAxis);
```

NOTE: the [USE_PARTICLE_FX_ASSET](#_0x6C38AF3693A69A91) needs to be called before EVERY StartNetworkedParticleFxNonLoopedAtCoord(....) call!

List with lots of particle effects: https://vespura.com/fivem/particle-list/

Note: Not all particles on this list are for non looped and vice versa, neither are all of them suited/meant to have SetParticleFxNonLoopedColour(....) called on them.

```
NativeDB Added Parameter 12: BOOL p11
```

## Parameters
* **effectName**: 
* **xPos**: 
* **yPos**: 
* **zPos**: 
* **xRot**: 
* **yRot**: 
* **zRot**: 
* **scale**: 
* **xAxis**: 
* **yAxis**: 
* **zAxis**: 

## Return value

## Examples
```lua
-- If the PtfxAsset hasn't been loaded yet, you'll need to load it first
if not HasNamedPtfxAssetLoaded("scr_indep_fireworks") then
	RequestNamedPtfxAsset("scr_indep_fireworks")
	while not HasNamedPtfxAssetLoaded("scr_indep_fireworks") do
		Wait(10)
	end
end

local CurrentPlayerCoords = GetEntityCoords(GetPlayerPed(-1))

UseParticleFxAssetNextCall("scr_indep_fireworks") -- Prepare the Particle FX for the next upcomming Particle FX call
SetParticleFxNonLoopedColour(1.0, 0.0, 0.0) -- Setting the color to Red (R, G, B)
StartNetworkedParticleFxNonLoopedAtCoord("scr_indep_firework_burst_spawn", CurrentPlayerCoords, 0.0, 0.0, 0.0, 1.0, false, false, false, false) -- Start the animation itself

RemoveNamedPtfxAsset("scr_indep_fireworks") -- Clean up
```



