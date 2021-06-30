---
ns: MISC
apiset: client
---
## GET_WIND_SPEED

```c
// 0xA8CF1CC0AFCD3F12 0x098F0F3C
float GET_WIND_SPEED();
```

Get wind speed from ped position.

## Return value
Value between 0.0 to 12.0

## Examples
```lua
-- A short example getting the wind level value in Lua
print(GetWindSpeed())
```
