---
ns: PED
aliases: ["0xAD27D957598E49E9"]
---
## TELL_GROUP_PEDS_IN_AREA_TO_ATTACK

```c
// 0xAD27D957598E49E9
void TELL_GROUP_PEDS_IN_AREA_TO_ATTACK(Ped ped, Vector3 position, float radius, cs_type(Any) Hash hash);
```

Tells all peds of a relationship group specified in p3
to attack a certain ped, specified in p0.

[`GET_PED_RELATIONSHIP_GROUP_HASH`](#_0x7DBDD04862D95F04) gives the group hash to use for p3 (Hash).

```
NativeDB Introduced: v1290
```

## Parameters
* **ped**: Targeted ped that should be attacked.
* **position**: Vector3 point from which area is defined.
* **radius**: Radius which defines area from the previously defined position.
* **hash**: Hash of group that should attack the specified ped.
