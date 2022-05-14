---
ns: PLAYER
aliases: ["0xA0D3E4F7AAFB7E78"]
---
## _SET_PLAYER_UNDERWATER_TIME_REMAINING

```c
// 0xA0D3E4F7AAFB7E78
Any _SET_PLAYER_UNDERWATER_TIME_REMAINING(Player player, float percentage);
```

Seems to lock the underwater timer of the specified player. Set `percentage` to `50.0` will reduce the value of [GET_PLAYER_UNDERWATER_TIME_REMAINING](#_0xA1FCF8E6AF40B731) to 5.0.

If you want to increase the underwater time for ped, use [SET_PED_MAX_TIME_UNDERWATER](#_0x6BA428C528D9E522) instead.

Using this native after [SET_PED_MAX_TIME_UNDERWATER](#_0x6BA428C528D9E522) **WILL NOT** get what you want. For example, if you set the max time underwater to `100.0` seconds using [SET_PED_MAX_TIME_UNDERWATER](#_0x6BA428C528D9E522) and then call this native and set the `percentage` to 50.0, you will not get `50.0`, instead `2.0`.

## Parameters
* **player**: Player id.
* **percentage**: Maximum is `100.0`. Any value above `100.0` and less than `0.0` will have no effect on [GET_PLAYER_UNDERWATER_TIME_REMAINING](#_0xA1FCF8E6AF40B731).

## Return value
