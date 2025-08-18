---
ns: WEAPON
---
## SET_WEAPON_ANIMATION_OVERRIDE

```c
// 0x1055AC3A667F09D9 0xA5DF7484
void SET_WEAPON_ANIMATION_OVERRIDE(Ped ped, Hash animStyle);
```

Changes the selected ped aiming animation style, you can find the list of animations below.

These are stored in the `weaponanimations.meta` file located in `Grand Theft Auto V\update\update.rpf\common\data\ai\weaponanimations.meta`.

For Lua, it's best if you send the animation using [compile-time jenkins](https://cookbook.fivem.net/2019/06/23/lua-support-for-compile-time-jenkins-hashes/) hashes to avoid overhead. An example is shown down below.

### Animations

```c
enum eWeaponAnimationOverrides {
	Ballistic = 0x5534A626,
	Default = 0xE4DF46D5,
	Franklin = 0x44C24694,
	Gang = 0xBC066B98,
	Michael = 0x55932F38,
	MP_F_Freemode = 0xACB10C83,
	Trevor = 0x2737D5AC,
	Hillbilly = 0x8503D409,
	Gang1H = 0x724A7AB7,
	FirstPerson = 0xEE38E8E0,
	FirstPersonAiming = 0xC76297A3,
	FirstPersonRNG = 0xA4FDD608,
	FirstPersonScope = 0x28117C22,
	FirstPersonMichael = 0xEAA2550B,
	FirstPersonMichaelAiming = 0x3E6FF30F,
	FirstPersonMichaelRNG = 0xB7A826C1,
	FirstPersonMichaelScope = 0xC554CF97,
	FirstPersonFranklin = 0xC407163A,
	FirstPersonFranklinAiming = 0x3D4B7B03,
	FirstPersonFranklinRNG = 0xBE79B0B4,
	FirstPersonFranklinScope = 0xAFEA6593,
	FirstPersonTrevor = 0xA65D5351,
	FirstPersonTrevorAiming = 0xF9BE8ED9,
	FirstPersonTrevorRNG = 0xD181ED09,
	FirstPersonTrevorScope = 0x34A67D6D,
	FirstPersonMPFemale = 0x8431583F,
	Fat = 0xC531A409,
	SuperFat = 0x529E5780,
	Female = 0x6D155A1B,
	GangFemale = 0x678ADF82,
}
```

## Parameters
* **ped**: The ped handle.
* **animStyle**: The animation style to apply, passed as a hash.

## Examples
```lua
-- Works when holding a pistol.
-- 'Hillbilly' also works for most peds.
SetWeaponAnimationOverride(PlayerPedId(), `Gang1H`)
```
