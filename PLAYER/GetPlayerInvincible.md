---
ns: PLAYER
---
## GET_PLAYER_INVINCIBLE

```c
// 0xB721981B2B939E07 0x680C90EE
BOOL GET_PLAYER_INVINCIBLE(Player player);
```

```
Returns the Player's Invincible status.  
This function will always return false if 0x733A643B5B0C53C1 is used to set the invincibility status. To always get the correct result, use this:  
	bool IsPlayerInvincible(Player player)  
	{  
auto addr = getScriptHandleBaseAddress(GET_PLAYER_PED(player));	  
if (addr)  
{  
	DWORD flag = *(DWORD *)(addr + 0x188);  
	return ((flag & (1 << 8)) != 0) || ((flag & (1 << 9)) != 0);  
}  
return false;  
	}  
============================================================  
This has bothered me for too long, whoever may come across this, where did anyone ever come up with this made up hash? 0x733A643B5B0C53C1 I've looked all over old hash list, and this nativedb I can not find that PC hash anywhere. What native name is it now or was it?  
```

## Parameters
* **player**: 

## Return value
