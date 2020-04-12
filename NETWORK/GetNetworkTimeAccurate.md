---
ns: NETWORK
aliases: ["0x89023FBBF9200E9F"]
---
## GET_NETWORK_TIME_ACCURATE

```c
// 0x89023FBBF9200E9F 0x98AA48E5
int GET_NETWORK_TIME_ACCURATE();
```


Returns the same value as [`GetNetworkTime`](#_0x7A5487FE9FAA6B48) in freemode, but as opposed to `GetNetworkTime` it always gets the most recent time, instead of once per tick.

Could be used for benchmarking since it can return times in ticks.


## Return value
Returns the network time as an integer
