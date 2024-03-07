---
ns: NETWORK
---
## GET_NETWORK_TIME

```c
// 0x7A5487FE9FAA6B48 0x998103C2
int GET_NETWORK_TIME();
```

Returns the same value as [`GetNetworkTimeAccurate`](#_0x89023FBBF9200E9F) in freemode, but as opposed to `GetNetworkTimeAccurate` it gets the time once per tick, instead of the most recent time.

## Return value
Returns the network time as an integer

```lua
print(GetNetworkTime()) -- prints the network time
```

```js
console.log(GetNetworkTime())
```

```cs
using static CitizenFX.Core.Native.API;

int networkTime = GetNetworkTime();
Debug.WriteLine($"{networkTime}");
```