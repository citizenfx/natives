---
ns: PHYSICS
aliases: ["0xAA6A6098851C396F"]
---
## _SET_LAUNCH_CONTROL_ENABLED

```c
// 0xAA6A6098851C396F
void _SET_LAUNCH_CONTROL_ENABLED(BOOL toggle);
```
Enables or disables Arena Mode for the local client. Sets a shared flag
alongside `SET_IN_STUNT_MODE` [`N_0x9ebd751e5787baf2`](#_0x9EBD751E5787BAF2); both modes can be active at once.

When enabled:

### Traction
* Multiplies the handling value `fTractionLossMult` by `0.25` when computing
  the surface material grip loss. This reduces how much grip is lost to the
  driving surface, with no effect on perfect surfaces (tarmac).
* Skips the low-speed traction loss modifier that normally reduces grip when
  pulling away at full throttle.

### In-air control
* Multiplies the in-air pitch and roll control force by `1.5`. This stacks with
  vehicle-specific modifiers (e.g. Veto's `2.5` becomes `3.75`).

### Damage and destruction
* Explodes the vehicle immediately when body health reaches `0`.
* Prevents engine damage from all sources.
* Prevents engine damage from ramp car collisions.
* Bypasses Stunt Mode's collision damage threshold, so small impacts still
  deal damage while Stunt Mode is also active.
* Skips oil leaks, fuel consumption, petrol tank fires, wheel break-off from
  collisions, helicopter rotor damage, and explosion-from-collision while
  enabled.
* Fire damage spread from other burning vehicles is reduced to zero when
  vehicle explosion chain-reaction avoidance is active.

### Physics
* Applies Z-axis damping when upward velocity exceeds `15.5` m/s, capped at
  `250` force, to limit how far launch pads can propel vehicles.
* Vehicle jumps are not cancelled by collision with a ball object.
* Reference frame velocity for wheel physics uses the contacted object's
  local speed at the contact point instead of its world velocity.

### Bikes and quads
* Restricts the "easy to land" check: the vehicle must be upright or have at
  least one wheel in contact with a surface. If both conditions are false,
  passengers are more likely to be knocked off bikes, quads, jet skis, and
  amphibious quads.

### Visual
* Wheel skid trail decals are allowed to appear on building surfaces.

### Related
* Vehicle explosion chain-reaction suppression is controlled separately and
  is not part of this native.
* Detonation-mode handling changes (altered aftertouch, self-righting,
  jump modifiers) were prototyped during development but never shipped.

```
NativeDB Introduced: v1604
```

## Parameters
* **toggle**: `true` to enable Arena Mode, `false` to disable.
