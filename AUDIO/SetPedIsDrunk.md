---
ns: AUDIO
---
## SET_PED_IS_DRUNK

```c
// 0x95D2D383D5396B8A 0xD2EA77A3
void SET_PED_IS_DRUNK(Ped ped, BOOL toggle);
```

```
Sets the ped drunk sounds.  Only works with PLAYER_PED_ID
====================================================
As mentioned above, this only sets the drunk sound to ped/player.
To give the Ped a drunk effect with drunk walking animation try using SET_PED_MOVEMENT_CLIPSET
Below is an example
if (!Function.Call<bool>(Hash.HAS_ANIM_SET_LOADED, "move_m@drunk@verydrunk"))
                {
                    Function.Call(Hash.REQUEST_ANIM_SET, "move_m@drunk@verydrunk");
                }
                Function.Call(Hash.SET_PED_MOVEMENT_CLIPSET, Ped.Handle, "move_m@drunk@verydrunk", 0x3E800000);
And to stop the effect use
RESET_PED_MOVEMENT_CLIPSET
```

## Parameters
* **ped**: 
* **toggle**: 

