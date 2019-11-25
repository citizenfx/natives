---
ns: NETWORK
aliases: ["_NETWORK_GET_NUM_PARTICIPANTS_HOST"]
---
## NETWORK_GET_MAX_NUM_PARTICIPANTS

```c
// 0xA6C90FBC38E395EE 0xCCD8C02D
int NETWORK_GET_MAX_NUM_PARTICIPANTS();
```

```
Seems to always return 0, but it's used in quite a few loops.
for (num3 = 0; num3 < NETWORK::0xCCD8C02D(); num3++)
    {
        if (NETWORK::NETWORK_IS_PARTICIPANT_ACTIVE(PLAYER::0x98F3B274(num3)) != 0)
        {
            var num5 = NETWORK::NETWORK_GET_PLAYER_INDEX(PLAYER::0x98F3B274(num3));
```

## Return value
