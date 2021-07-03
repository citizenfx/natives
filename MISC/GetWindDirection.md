---
ns: MISC
apiset: client
---
## GET_WIND_DIRECTION

```c
// 0x1F400FEF721170DA 0x89499A0D
Vector3 GET_WIND_DIRECTION();
```

Get wind direction from ped position.

## Return value
Value in vector3 from direction.

## Examples
```lua
-- A short example getting the wind direction value in Lua
print(GetWindDirection())
```
