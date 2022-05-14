---
ns: AUDIO
---
## PLAY_PAIN

```c
// 0xBC9AE166038A5CEC 0x874BD6CB
void PLAY_PAIN(Ped ped, int painID, int p1);
```

**Warning**:

Parameters are wrong after painID. To preserve C-Sharp backwards compatibility, we can't add or remove parameters.  

Correct parameters should be:  
`PLAY_PAIN(Ped ped, int painID, float p3, bool createNetEvent)`

Check the *examples* section for the correct usage of this native.

**Description:**

Plays a pain sound. A maximum of 33 pain IDs are allowed.  
`createNetEvent` creates a `CPedPlayPainEvent` when set to true.

Below is a list of all the pain IDs (Asterisks indicate that sounds can play in a Low, Medium or High fashion), for example: `PAIN_LOW_GENERIC`. The corresponding pain strings belong to the game exe.

**Pain IDs:**

- 0: PAIN_*_GENERIC (Low, Medium, High)
- 1: UNUSED
- 2: UNUSED
- 3: SCREAM_PANIC (Nothing can be heard)
- 4: SCREAM_PANIC_SHORT
- 5: SCREAM_SCARED
- 6: SCREAM_SHOCKED
- 7: SCREAM_TERROR
- 8: ON_FIRE
- 9: UNUSED
- 10: UNUSED
- 11: INHALE (Nothing can be heard)
- 12: EXHALE (Nothing can be heard)
- 13: DEATH_HIGH_SHORT
- 14: UNUSED
- 15: PAIN_HIGH_GENERIC
- 16: PAIN_*_GENERIC (Low, Medium, High)
- 17: PAIN_SHOVE
- 18: PAIN_WHEEZE
- 19: COUGH
- 20: PAIN_TAZER
- 21: UNUSED
- 22: CLIMB_LARGE (Nothing can be heard)
- 23: CLIMB_SMALL (Nothing can be heard)
- 24: JUMP (Nothing can be heard)
- 25: COWER
- 26: WHIMPER
- 27: DYING_MOAN
- 28: EXHALE_CYCLING (Nothing can be heard)
- 29: PAIN_RAPIDS (Nothing can be heard)
- 30: SNEEZE
- 31: MELEE_SMALL_GRUNT (Nothing can be heard)
- 32: MELEE_LARGE_GRUNT (Nothing can be heard)
- 33: PAIN_*_GENERIC (Low, Medium, High) 

## Parameters
* **ped**: The ped entity.
* **painID**: The pain id, max allowed id is 33.

## Examples
```lua
-- Play ON_FIRE (8) for all nearby peds, don't create an event (last parameter set to false)
for _, ped in ipairs(GetGamePool('CPed')) do
    PlayPain(ped, 8, 0.0, false)
end
```
