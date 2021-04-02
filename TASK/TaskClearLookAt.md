---
ns: TASK
---
## TASK_CLEAR_LOOK_AT

```c
// 0x0F804F1DB19B9689 0x60EB4054
void TASK_CLEAR_LOOK_AT(Ped ped);
```

```
Not clear what it actually does, but here's how script uses it -
if (OBJECT::HAS_PICKUP_BEEN_COLLECTED(...)
{
 if(ENTITY::DOES_ENTITY_EXIST(PLAYER::PLAYER_PED_ID()))
    {
     TASK::TASK_CLEAR_LOOK_AT(PLAYER::PLAYER_PED_ID());
  }
 ...
}
Another one where it doesn't "look" at current player -
TASK::TASK_PLAY_ANIM(l_3ED, "missheist_agency2aig_2", "look_at_phone_a", 1000.0, -2.0, -1, 48, v_2, 0, 0, 0);
PED::_2208438012482A1A(l_3ED, 0, 0);
TASK::TASK_CLEAR_LOOK_AT(l_3ED);
```

## Parameters
* **ped**: 

