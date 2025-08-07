---
ns: PAD
aliases: ["0x59B9A7AF4C95133C", "_GET_LOCAL_PLAYER_AIM_STATE_2"]
---
## GET_LOCAL_PLAYER_GAMEPAD_AIM_STATE

```c
// 0x59B9A7AF4C95133C
int GET_LOCAL_PLAYER_GAMEPAD_AIM_STATE();
```

Same behavior as [`GET_LOCAL_PLAYER_AIM_STATE`](#_0xBB41AFBBBC0A0287) but will also return if player using a keyboard.  

## Return value
Returns the local player's targeting mode. See [`SET_PLAYER_TARGETING_MODE`](#_0xB1906895227793F3).
