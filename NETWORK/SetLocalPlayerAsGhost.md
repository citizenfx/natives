---
ns: NETWORK
---
## _SET_LOCAL_PLAYER_AS_GHOST

```c
// 0x5FFE9B4144F9712F
void _SET_LOCAL_PLAYER_AS_GHOST(BOOL toggle, BOOL invertGhosting);
```

Formerly incorrectly named `USE_PLAYER_COLOUR_INSTEAD_OF_TEAM_COLOUR` due to incorrect treatment of console vs. PC native registration.

Native name guessed through ordering.

```
NativeDB Added Parameter 2: BOOL p1
```

## Parameters
* **toggle**: 
* **invertGhosting**: If bInvertGhosting is set to TRUE and bSet is TRUE, then the local player will be displayed semi-transparent instead (remote players will be rendered as normal) 

