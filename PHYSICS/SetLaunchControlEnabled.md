---
ns: PHYSICS
aliases: ["0xAA6A6098851C396F"]
---
## _SET_LAUNCH_CONTROL_ENABLED

```c
// 0xAA6A6098851C396F
void _SET_LAUNCH_CONTROL_ENABLED(BOOL toggle);
```
Toggles "Arena Mode", a global flag that affects physics, damage, and handling for all vehicles.

When enabled:

* fTractionLossMult is multiplied by 0.25, increasing grip significantly.
* Mid-air vehicle control rotation force is increased by 50%.
* Vehicles explode immediately when body health reaches 0.
* Disables chain-reaction explosions for nearby vehicles.
* Prevents engine damage from colliding with Ramp Cars.
* Overrides the Stunt Mode ([`N_0x9ebd751e5787baf2`](#_0x9EBD751E5787BAF2)) collision protection.
* Reduces the chance of falling off bikes/quads.

```
NativeDB Introduced: v1604
```

## Parameters
* **toggle**:
