---
ns: MISC
aliases: ["0xD3D15555431AB793", "_IS_GAME_USING_METRIC_MEASUREMENT_SYSTEM"]
---
## SHOULD_USE_METRIC_MEASUREMENTS

```c
// 0xD3D15555431AB793 0xBAF17315
BOOL SHOULD_USE_METRIC_MEASUREMENTS();
```

Returns true if the game is using the metric measurement system (profile setting 227), false if imperial is used.

## Return value
Returns true if the game is using the metric measurement system, false if imperial is used.

## Examples
```lua
if (ShouldUseMetricMeasurements()) then
    print("Distance to finish line: 8,04672 km.")
else
    print("Distance to finish line: 5 mi.")
end
```
