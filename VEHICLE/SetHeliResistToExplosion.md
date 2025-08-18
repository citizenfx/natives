---
ns: VEHICLE
---
## SET_HELI_RESIST_TO_EXPLOSION

```c
// 0x8074CC1886802912
void SET_HELI_RESIST_TO_EXPLOSION(Vehicle helicopter, BOOL bResistToExplosion);
```

Makes a helicopter resistant to multiple explosions. When enabled, helicopters can survive two or more explosions.

```
NativeDB Introduced: 2545
```

## Parameters
* **helicopter**: The helicopter to apply resistance to.
* **bResistToExplosion**: Set to `true` to make the helicopter resistant to explosions, or `false` to disable this resistance.