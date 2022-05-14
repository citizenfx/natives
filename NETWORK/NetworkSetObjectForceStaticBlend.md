---
ns: NETWORK
aliases: ["0x0379DAF89BA09AA5"]
---
## _NETWORK_SET_OBJECT_FORCE_STATIC_BLEND

```c
// 0x0379DAF89BA09AA5
void _NETWORK_SET_OBJECT_FORCE_STATIC_BLEND(Object object, BOOL enabled);
```

Sets whether or not an object (created using `CREATE_OBJECT`, or similar) should have its position/rotation synchronized,
even if it is a 'static' object (for example, having flag 32 - Static - set in its archetype definition).

This has to be called during the same frame the object is created/registered for network, as otherwise it may already
have a remote clone created.

Once a remote clone is created, changing this value will not have any effect on said clone.

## Parameters
* **object**: The object to set forced blending state for.
* **enabled**: `true` to enable forced blending.

