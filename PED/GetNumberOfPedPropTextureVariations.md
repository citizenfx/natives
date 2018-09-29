---
ns: PED
---
## GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS

```c
// 0xA6E7F1CEB523E171 0x4892B882
int GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS(Ped ped, int propId, int drawableId);
```

```
Need to check behavior when drawableId = -1  
- Doofy.Ass  
Why this function doesn't work and return nill value?  
GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS(PLAYER.PLAYER_PED_ID(), 0, 5)  
tick: scripts/addins/menu_execute.lua:51: attempt to call field 'GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS' (a nil value)  
List of component/props ID  
gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html  
```

## Parameters
* **ped**: 
* **propId**: 
* **drawableId**: 

## Return value
