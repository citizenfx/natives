---
ns: NETWORK
---
## GET_NETWORK_TIME

```c
// 0x7A5487FE9FAA6B48 0x998103C2
int GET_NETWORK_TIME();
```


## Return value
Returns the network time this tick, if you want a tick-agnostic version use [`GetNetworkTimeAccurate`](#_0x89023FBBF9200E9F).

## Examples
```lua
print(GetNetworkTime())
```

```js
console.log(GetNetworkTime())
```

```cs
using static CitizenFX.Core.Native.API;

int networkTime = GetNetworkTime();
Debug.WriteLine($"{networkTime}");
```
