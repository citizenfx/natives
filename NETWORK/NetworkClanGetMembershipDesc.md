---
ns: NETWORK
---
## NETWORK_CLAN_GET_MEMBERSHIP_DESC

```c
// 0x48DE78AF2C8885B8 0x3369DD1F
BOOL NETWORK_CLAN_GET_MEMBERSHIP_DESC(int* memberDesc, int p1);
```

```
networkMembershipMgr memShip;  
int maxMemship = _GET_NUM_MEMBERSHIP_DESC();  
for (int i = 0; i < maxMemship; i++)  
{  
	NETWORK_CLAN_GET_MEMBERSHIP_DESC(&memShip.memHandle, i);  
}  
```

## Parameters
* **memberDesc**: 
* **p1**: 

## Return value
