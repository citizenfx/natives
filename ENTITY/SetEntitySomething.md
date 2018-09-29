---
ns: ENTITY
aliases: ["0x3910051CCECDB00C","_SET_ENTITY_REGISTER"]
---
## _SET_ENTITY_SOMETHING

```c
// 0x3910051CCECDB00C 0xD3850671
void _SET_ENTITY_SOMETHING(Entity entity, BOOL toggle);
```

```
what does this native do?  
bool IsEntitySomething(Entity entity)  
{  
	auto addr = getScriptHandleBaseAddress(entity);  
	printf("addr: 0x%X \n", addr);  
	if (addr)  
	{  
DWORD flag = *(DWORD *)(addr + 0x48D);  
printf("flag: 0x%X \n", flag);  
return ((flag & (1 << 3)) != 0) || ((flag & (1 << 30)) != 0);  
	}  
	return false;  
}  
wot ?  
```

## Parameters
* **entity**: 
* **toggle**: 

