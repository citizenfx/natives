---
ns: MONEY
aliases: ["0xF9C812CD7C46E817"]
---
## NETWORK_REFUND_CASH

```c
// 0xF9C812CD7C46E817 0x07C92F21
void NETWORK_REFUND_CASH(int index, char* context, char* reason, BOOL unk);
```

```
index  
-------  
See function sub_1005 in am_boat_taxi.ysc  
context  
----------  
"BACKUP_VAGOS"  
"BACKUP_LOST"  
"BACKUP_FAMILIES"  
"HIRE_MUGGER"  
"HIRE_MERCENARY"  
"BUY_CARDROPOFF"  
"HELI_PICKUP"  
"BOAT_PICKUP"  
"CLEAR_WANTED"  
"HEAD_2_HEAD"  
"CHALLENGE"  
"SHARE_LAST_JOB"  
"DEFAULT"  
reason  
---------  
"NOTREACHTARGET"  
"TARGET_ESCAPE"  
"DELIVERY_FAIL"  
"NOT_USED"  
"TEAM_QUIT"  
"SERVER_ERROR"  
"RECEIVE_LJ_L"  
"CHALLENGE_PLAYER_LEFT"  
"DEFAULT"  
unk  
-----  
Unknown bool value  
```

## Parameters
* **index**: 
* **context**: 
* **reason**: 
* **unk**: 

