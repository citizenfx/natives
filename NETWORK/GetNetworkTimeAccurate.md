---
ns: NETWORK
aliases: ["0x89023FBBF9200E9F"]
---
## GET_NETWORK_TIME_ACCURATE

```c
// 0x89023FBBF9200E9F 0x98AA48E5
int GET_NETWORK_TIME_ACCURATE();
```

```
returns the same value as NETWORK::GET_NETWORK_TIME in freemode, but as opposed to GetNetworkTime it always gets the most recent time, instead of once per tick.
Could be used for benchmarking since it can return times in ticks.
```

## Return value
