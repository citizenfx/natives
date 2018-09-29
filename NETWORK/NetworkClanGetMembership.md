---
ns: NETWORK
---
## NETWORK_CLAN_GET_MEMBERSHIP

```c
// 0xC8BC2011F67B3411 0xCDC4A590
BOOL NETWORK_CLAN_GET_MEMBERSHIP(int* p0, int* clanMembership, int p2);
```

```
BOOL DEBUG_MEMBRESHIP(int Param)  
{  
	int membership;  
	networkHandleMgr handle;  
	NETWORK_HANDLE_FROM_PLAYER(iSelectedPlayer, &handle.netHandle, 13);  
	if (!_NETWORK_IS_CLAN_MEMBERSHIP_FINISHED_DOWNLOADING())  
	{  
		if (NETWORK_CLAN_REMOTE_MEMBERSHIPS_ARE_IN_CACHE(&Param))  
		{  
if (NETWORK_CLAN_GET_MEMBERSHIP_COUNT(&Param) > 0)  
{  
	if (NETWORK_CLAN_GET_MEMBERSHIP_VALID(&Param, 0))  
	{  
		if (NETWORK_CLAN_GET_MEMBERSHIP(&Param, &membership, -1))  
		{  
_0xF633805A(&membership, 35, &handle.netHandle);  
		}  
	}  
}  
		}  
	}  
	else  
	{  
		NETWORK_CLAN_DOWNLOAD_MEMBERSHIP(&handle.netHandle);  
	}  
}  
```

## Parameters
* **p0**: 
* **clanMembership**: 
* **p2**: 

## Return value
