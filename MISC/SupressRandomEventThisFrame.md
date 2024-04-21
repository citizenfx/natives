---
ns: MISC
aliases: ["0x1EAE0A6E978894A2"]
---
## SUPRESS_RANDOM_EVENT_THIS_FRAME

```c
// 0x1EAE0A6E978894A2 0x8F60366E
void SUPRESS_RANDOM_EVENT_THIS_FRAME(int eventType, BOOL enable);
```

Suppresses or enables a specific type of random event for the current frame.

```c
enum eEventType {
    RC_PED_STEAL_VEHICLE = 0,
    RC_PED_JAY_WALK_LIGHT = 1,
    RC_COP_PURSUE = 2,
    RC_COP_PURSUE_VEHICLE_FLEE_SPAWNED = 3,
    RC_COP_VEHICLE_DRIVING_FAST = 4,
    RC_COP_VEHICLE_DRIVING_SLOW = 5,
    RC_DRIVER_RECKLESS = 6,
    RC_DRIVER_PRO = 7,
    RC_PED_PURSUE_WHEN_HIT_BY_CAR = 8
}
```

## Parameters
* **eventType**: The type of the event to be suppressed or enabled. Use the `eEventType` enum for specific event types.
* **enable**: Set to `false` to suppress the event for this frame; set to `true` to enable it.


## Examples
```lua
local eventToDisable = 0 -- RC_PED_STEAL_VEHICLE

CreateThread(function()
    while true do
        Wait(0)
        SupressRandomEventThisFrame(eventToDisable, true)
    end
end)
```

```js
const eventToDisable = 0; // RC_PED_STEAL_VEHICLE

setTick(() => {
    SupressRandomEventThisFrame(eventToDisable, true);
});
```
