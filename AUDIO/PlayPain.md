---
ns: AUDIO
---
## PLAY_PAIN

```c
// 0xBC9AE166038A5CEC 0x874BD6CB
void PLAY_PAIN(Ped ped, int damageReason, cs_type(int) float rawDamage);
```

This native had a 4th parameter added in newer game builds
`syncOverNetwork` creates a `CPedPlayPainEvent` when set to true, by default this variable is false.

You won't be able to use this for clones (remote pedestrians that are not owned by you) or migrating peds if `syncOverNetwork` is set to true; it simply won't execute. 

The `ped` should also have speech for this to work.

```c
enum eAudDamageReason {
	AUD_DAMAGE_REASON_DEFAULT = 0,
	AUD_DAMAGE_REASON_FALLING = 1,
	AUD_DAMAGE_REASON_SUPER_FALLING = 2,
	AUD_DAMAGE_REASON_SCREAM_PANIC = 3,
	AUD_DAMAGE_REASON_SCREAM_PANIC_SHORT = 4,
	AUD_DAMAGE_REASON_SCREAM_SCARED = 5,
	AUD_DAMAGE_REASON_SCREAM_SHOCKED = 6,
	AUD_DAMAGE_REASON_SCREAM_TERROR = 7,
	AUD_DAMAGE_REASON_ON_FIRE = 8,
	AUD_DAMAGE_REASON_DROWNING = 9,
	// drowning on the surface of water, after we time out
	AUD_DAMAGE_REASON_SURFACE_DROWNING = 10,
	AUD_DAMAGE_REASON_INHALE = 11,
	AUD_DAMAGE_REASON_EXHALE = 12,
	AUD_DAMAGE_REASON_POST_FALL_GRUNT = 13,
	AUD_DAMAGE_REASON_ENTERING_RAGDOLL_DEATH = 14,
	AUD_DAMAGE_REASON_EXPLOSION = 15,
	AUD_DAMAGE_REASON_MELEE = 16,
	AUD_DAMAGE_REASON_SHOVE = 17,
	AUD_DAMAGE_REASON_WHEEZE = 18,
	AUD_DAMAGE_REASON_COUGH = 19,
	AUD_DAMAGE_REASON_TAZER = 20,
	AUD_DAMAGE_REASON_EXHAUSTION = 21,
	AUD_DAMAGE_REASON_CLIMB_LARGE = 22,
	AUD_DAMAGE_REASON_CLIMB_SMALL = 23,
	AUD_DAMAGE_REASON_JUMP = 24,
	AUD_DAMAGE_REASON_COWER = 25,
	AUD_DAMAGE_REASON_WHIMPER = 26,
	AUD_DAMAGE_REASON_DYING_MOAN = 27,
	AUD_DAMAGE_REASON_CYCLING_EXHALE = 28,
	AUD_DAMAGE_REASON_PAIN_RAPIDS = 29,
	AUD_DAMAGE_REASON_SNEEZE = 30,
	AUD_DAMAGE_REASON_MELEE_SMALL_GRUNT = 31,
	AUD_DAMAGE_REASON_MELEE_LARGE_GRUNT = 32,
	AUD_DAMAGE_REASON_POST_FALL_GRUNT_LOW = 33
}
```

## Parameters
* **ped**: The ped entity.
* **damageReason**: The damage reason/type, refer to eAudDamageReason
* **rawDamage**: Damage value, defaults to 0.0

## Examples
```lua
-- Play ON_FIRE (8) for all nearby peds, don't create an event (last parameter set to false)
for _, ped in ipairs(GetGamePool('CPed')) do
    PlayPain(ped, 8, 0.0, false)
end
```
