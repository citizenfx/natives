---
ns: VEHICLE
---
## GET_DISPLAY_NAME_FROM_VEHICLE_MODEL

```c
// 0xB215AAC32D25D019 0xEC86DF39
char* GET_DISPLAY_NAME_FROM_VEHICLE_MODEL(Hash modelHash);
```

```
Returns model name of vehicle in all caps. Needs to be displayed through localizing text natives to get proper display name.  
-----------------------------------------------------------------------------------------------------------------------------------------  
While often the case, this does not simply return the model name of the vehicle (which could be hashed to return the model hash). Variations of the same vehicle may also use the same display name.  
-----------------------------------------------------------------------------------------------------------------------------------------  
Returns "CARNOTFOUND" if the hash doesn't match a vehicle hash.  
Using UI::_GET_LABEL_TEXT, you can get the localized name.  
For a full list, see here: pastebin.com/wvpyS4kS (pastebin.com/dA3TbkZw)  
```

## Parameters
* **modelHash**: 

## Return value
