---
ns: NETWORK
aliases: ["0xF1CA12B18AEF5298","_NETWORK_SET_ENTITY_VISIBLE_TO_NETWORK"]
---
## _NETWORK_SET_ENTITY_INVISIBLE_TO_NETWORK

```c
// 0xF1CA12B18AEF5298 0x09CBC4B0
void _NETWORK_SET_ENTITY_INVISIBLE_TO_NETWORK(Entity entity, BOOL toggle);
```

```
if set to true other network players can't see it  
if set to false other network player can see it  
=========================================  
^^ I attempted this by grabbing an object with GET_ENTITY_PLAYER_IS_FREE_AIMING_AT and setting this naive no matter the toggle he could still see it.  
pc or last gen?  
^^ last-gen  
```

## Parameters
* **entity**: 
* **toggle**: 

