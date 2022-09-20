---
ns: STREAMING
aliases: ["0x0BC3144DEB678666"]
---
## ADD_MODEL_TO_CREATOR_BUDGET

```c
// 0x0BC3144DEB678666 0xC0E83320
BOOL ADD_MODEL_TO_CREATOR_BUDGET(Hash modelHash);
```
Add model memory size.
In GTA:O call **Model Memory**
https://youtu.be/AqQrs-4fWbw?t=222

## Examples
```lua
InitCreatorBudget()
AddModelToCreatorBudget(GetHashKey("bmx"))
print(GetUsedCreatorModelMemoryPercentage())
```


## Parameters
* **modelHash**: 

## Return value
