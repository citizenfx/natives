---
ns: HUD
aliases: ["0x97C9E4E7024A8F2C","_NOTIFICATION_SEND_APARTMENT_INVITE"]
---
## _DRAW_NOTIFICATION_APARTMENT_INVITE

```c
// 0x97C9E4E7024A8F2C 0xA9CCEF66
int _DRAW_NOTIFICATION_APARTMENT_INVITE(BOOL p0, BOOL p1, int* p2, int p3, BOOL isLeader, BOOL unk0, int clanDesc, int R, int G, int B);
```

```
This function and the one below it are for after you receive an invite, not sending it.  
p0 = 1 or 0  
nothin doin.   
int invite(Player player)  
	{  
int iVar2, iVar3;  
networkHandleMgr handle;  
NETWORK_HANDLE_FROM_PLAYER(player, &handle.netHandle, 13);  
networkClanMgr clan;  
char *playerName = GET_PLAYER_NAME(player);  
_SET_NOTIFICATION_TEXT_ENTRY("STRING");  
_SET_NOTIFACTION_COLOR_NEXT(0);  
ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(playerName);  
if (NETWORK_CLAN_PLAYER_GET_DESC(&clan, 35, &handle.netHandle))  
{  
	iVar2 = 0;  
	if (ARE_STRINGS_EQUAL(clan.unk22, "Leader") && clan.unk30 == 0)  
	{  
iVar2 = 1;  
	}  
	if (clan.unk21 > 0)  
	{  
iVar3 = 0;  
	}  
	else  
	{  
iVar3 = 1;  
	}  
	BOOL unused = _0x54E79E9C(&clan.clanHandle, 35);  
	return _DRAW_NOTIFICATION_APARTMENT_INVITE(iVar3, 0 /*unused*/, &clan.unk17, clan.unk30, iVar2, 0, clan.clanHandle, 0, 0, 0);  
}  
	}  
```

## Parameters
* **p0**: 
* **p1**: 
* **p2**: 
* **p3**: 
* **isLeader**: 
* **unk0**: 
* **clanDesc**: 
* **R**: 
* **G**: 
* **B**: 

## Return value
