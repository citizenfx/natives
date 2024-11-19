---
ns: DECORATOR
---
## DECOR_SET_INT

```c
// 0x0CE3AA5E1CA19E10 0xDB718B21
BOOL DECOR_SET_INT(Entity entity, char* decoratorName, int value);
```

Add or update a INT decorator on an object

## Parameters
* **entity**: entity to modify decorators on
* **decoratorName**: name of the decorator
* **value**: value of the decorator

## Return value
* **BOOL** true if completed successfuly else false