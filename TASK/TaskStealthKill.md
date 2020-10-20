---
ns: TASK
---
## TASK_STEALTH_KILL

```c
// 0xAA5DC05579D60BD9 0x0D64C2FA
void TASK_STEALTH_KILL(Ped killer, Ped target, Hash actionType, float p3, Any p4);
```

```
Stealth kill action name hashes:  
stealth kills can be found here: Grand Theft Auto V\common.rpf\data\action\stealth_kills.meta  
...  
{  
    "ACT_stealth_kill_a",  
    "ACT_stealth_kill_weapon",  
    "ACT_stealth_kill_b",  
    "ACT_stealth_kill_c",  
    "ACT_stealth_kill_d",  
    "ACT_stealth_kill_a_gardener"  
}  
Only known script using this native: fbi4_prep2  
EXAMPLE:  
ai::task_stealth_kill(iParam1, Local_252, gameplay::get_hash_key("AR_stealth_kill_a"), 1f, 0);ai::task_stealth_kill(iParam1, Local_252, gameplay::get_hash_key("AR_stealth_kill_knife"), 1f, 0);  
Also it may be important to note, that each time this task is called, it's followed by AI::CLEAR_PED_TASKS on the target  
```

## Parameters
* **killer**: 
* **target**: 
* **actionType**: 
* **p3**: 
* **p4**: 

