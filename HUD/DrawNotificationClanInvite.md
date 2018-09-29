---
ns: HUD
aliases: ["0x137BC35589E34E1E","_NOTIFICATION_SEND_CLAN_INVITE"]
---
## _DRAW_NOTIFICATION_CLAN_INVITE

```c
// 0x137BC35589E34E1E 0x88B9B909
int _DRAW_NOTIFICATION_CLAN_INVITE(BOOL p0, BOOL p1, int* p2, int p3, BOOL isLeader, BOOL unk0, int clanDesc, char* playerName, int R, int G, int B);
```

```
p0 = 1 or 0  
crashes my game...  
this is for sending invites to network players - jobs/apartment/ect...   
return notification handle  
int invite(Player player)  
	{  
networkHandleMgr netHandle;  
networkClanMgr clan;  
char *playerName = GET_PLAYER_NAME(player);  
_SET_NOTIFICATION_TEXT_ENTRY("STRING");  
_SET_NOTIFACTION_COLOR_NEXT(1);  
ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(playerName);  
NETWORK_HANDLE_FROM_PLAYER(player, &netHandle.netHandle, 13);  
if (NETWORK_CLAN_PLAYER_IS_ACTIVE(&netHandle.netHandle))  
{  
	NETWORK_CLAN_PLAYER_GET_DESC(&clan.clanHandle, 35, &netHandle.netHandle);  
	_DRAW_NOTIFICATION_CLAN_INVITE(0, _0x54E79E9C(&clan.clanHandle, 35), &clan.unk17, clan.isLeader, 0, 0, clan.clanHandle, playerName, 0, 0, 0);  
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
* **playerName**: 
* **R**: 
* **G**: 
* **B**: 

## Return value
