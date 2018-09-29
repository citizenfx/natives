---
ns: ENTITY
---
## SET_ENTITY_INVINCIBLE

```c
// 0x3882114BDE571AD4 0xC1213A21
void SET_ENTITY_INVINCIBLE(Entity entity, BOOL toggle);
```

```
Sets a ped or an object totally invincible. It doesn't take any kind of damage. Peds will not ragdoll on explosions and the tazer animation won't apply either.  
If you use this for a ped and you want Ragdoll to stay enabled, then do:  
*(DWORD *)(pedAddress + 0x188) |= (1 << 9);  
Use this if you want to get the invincibility status:  
	bool IsPedInvincible(Ped ped)  
	{  
auto addr = getScriptHandleBaseAddress(ped);	  
if (addr)  
{  
	DWORD flag = *(DWORD *)(addr + 0x188);  
	return ((flag & (1 << 8)) != 0) || ((flag & (1 << 9)) != 0);  
}  
return false;  
	}  
```

## Parameters
* **entity**: 
* **toggle**: 

