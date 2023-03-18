---
ns: GRAPHICS
aliases: ["0x9DCE1F0F78260875"]
---
## ENABLE_ALIEN_BLOOD_VFX

```c
// 0x9DCE1F0F78260875 0xCE8B8748
void ENABLE_ALIEN_BLOOD_VFX(BOOL toggle);
```

If true, this native will create a small, blue effect upon bullet impact as it's own "blood effect".

If the PTFX asset "scr_rcbarry1" is not requested using ([`RequestNamedPtfxAsset`](#_0xD821490579791273)) then this native **will not work as intended**.

## Parameters
* **toggle**: Whether to toggle the alien VFX on or off.

## Examples
```lua
RequestNamedPtfxAsset("scr_rcbarry1") -- Request the PTFX
while not HasNamedPtfxAssetLoaded("scr_rcbarry1") do
  Citizen.Wait(0)
end
EnableAlienBloodVfx(true) -- Enable the alien PTFX
```
