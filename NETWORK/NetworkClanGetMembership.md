---
ns: NETWORK
---
## NETWORK_CLAN_GET_MEMBERSHIP

```c
// 0xC8BC2011F67B3411 0xCDC4A590
BOOL NETWORK_CLAN_GET_MEMBERSHIP(int* networkHandle, int* clanMembership, int membershipIndex);
```

Retrieves a membership for a player, from the cache (i.e. downloaded via NETWORK_CLAN_DOWNLOAD_MEMBERSHIP).

## Parameters
* **networkHandle**: A player network handle.
* **clanMembership**: Output buffer for the membership data. Also known as "desc". 
* **membershipIndex**: If the player has multiple crews/memberships, use [0-9], or -1 to get the active crew/membership.

## Return value
Returns true on success, false otherwise.

## Examples
```c
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
