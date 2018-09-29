---
ns: ENTITY
---
## _GET_ENTITY_POPULATION_TYPE

```c
// 0xF6F5161F4534EDFF
int _GET_ENTITY_POPULATION_TYPE(Entity entity);
```

```
Console Hash: 0xFC30DDFF  
Returns range from 0-10  
--------------------------------------------------------------  
The type name can be retrieved by using this:  
typedef LPSTR(__fastcall *GetEntityPopulationTypeName_t)(unsigned __int16 entityPopulationType, bool scriptName);  
	GetEntityPopulationTypeName_t GetEntityPopulationTypeName = (GetEntityPopulationTypeName_t)FindPattern("44 0F B7 C1 4C 8D 0D ?? ?? ?? ?? 41 83 F8 07");  
```

## Parameters
* **entity**: 

## Return value
