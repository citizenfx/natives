---
ns: NETWORK
---
## NETWORK_HOST_TRANSITION

```c
// 0xA60BB5CE242BB254 0x146764FB
BOOL NETWORK_HOST_TRANSITION(int p0, int p1, int p2, int p3, Any p4, BOOL p5, BOOL p6, int p7, Any p8, int p9);
```

From what I can tell it looks like it does the following:

Creates/hosts a new transition to another online session, using this in FiveM will result in other players being disconencted from the server/preventing them from joining. This is most likely because I entered the wrong session parameters since they're pretty much all unknown right now.

You also need to use `NetworkJoinTransition(Player player)` and `NetworkLaunchTransition()`.


## Parameters
* **p0**: Unknown int
* **p1**: Unknown int
* **p2**: Unknown int
* **p3**: Unknown int
* **p4**: Unknown always 0 in decompiled scripts
* **p5**: BOOL purpose unknown, both 0 and 1 are used in decompiled scripts.
* **p6**: BOOL purpose unknown, both 0 and 1 are used in decompiled scripts.
* **p7**: Unknown int, it's an int according to decompiled scripts, however the value is always 0 or 1.
* **p8**: Unknown int, it's an int according to decompiled scripts, however the value is always 0 or 1.
* **p9**: Unknown int, sometimes 0, but also 32768 or 16384 appear in decompiled scripst, maybe a flag of some sort?

## Return value
Probably a bool indicating if the transition was created.
