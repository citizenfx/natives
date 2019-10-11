---
ns: NETWORK
aliases: ["0x9DD368BF06983221"]
---
## NETWORK_DISABLE_INVINCIBLE_FLASHING

```c
// 0x9DD368BF06983221 0x8D27280E
void NETWORK_DISABLE_INVINCIBLE_FLASHING(Player player, BOOL toggle);
```

```
I did this and I didn't see anything happening  
int pindex;  
for (int i = 0; i < 32; i++)  
{  
	if (NETWORK_IS_PARTICIPANT_ACTIVE(INT_TO_PARTICIPANTINDEX(i)))  
	{  
pindex = NETWORK_GET_PLAYER_INDEX(INT_TO_PARTICIPANTINDEX(i));  
NETWORK_DISABLE_INVINCIBLE_FLASHING(pindex, 1);  
	}  
}  
```

## Parameters
* **player**: 
* **toggle**: 

