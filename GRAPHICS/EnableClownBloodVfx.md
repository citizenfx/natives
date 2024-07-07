---
ns: GRAPHICS
aliases: ["SET_CAMERA_ENDTIME"]
---
## ENABLE_CLOWN_BLOOD_VFX

```c
// 0xD821490579791273 0xC61C75E9
void ENABLE_CLOWN_BLOOD_VFX(BOOL toggle);
```

If true, this native will create purple explosions upon projectile impact, add comic-like PTFX when firing a weapon, create a sound on bullet impact and have its own "blood effect".

If the PTFX asset "scr_rcbarry2" is not requested using ([`RequestNamedPtfxAsset`](#_0xD821490579791273)) then this native **will not work as intended**.


Excerpt from fm_content_drug_lab_work.c:
```
STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_rcbarry2");
if (STREAMING::HAS_NAMED_PTFX_ASSET_LOADED("scr_rcbarry2"))
{
  GRAPHICS::ENABLE_CLOWN_BLOOD_VFX(true);
  AUDIO::START_AUDIO_SCENE("DLC_CM2022_DRUG_TRIP_SPRINKLERS_SCENE");
  func_720(26);
}
```

## Parameters
* **toggle**: Whether to toggle the clown VFX on or off.

## Examples
```lua
RequestNamedPtfxAsset("scr_rcbarry2") -- Request the PTFX
while not HasNamedPtfxAssetLoaded("scr_rcbarry2") do
  Citizen.Wait(0)
end
EnableClownBloodVfx(true) -- Enable the clown PTFX
```
