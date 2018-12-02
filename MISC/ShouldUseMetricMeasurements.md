---
ns: MISC
aliases: ["0xD3D15555431AB793", "_IS_GAME_USING_METRIC_MEASUREMENT_SYSTEM"]
---
## SHOULD_USE_METRIC_MEASUREMENTS

```c
// 0xD3D15555431AB793 0xBAF17315
BOOL SHOULD_USE_METRIC_MEASUREMENTS();
```

Returns true if the game is using the metric measurement system, false if imperial is used.
This is what r* uses for the different label types (either ones with miles in them or with km, as well as some other measurement related labels).

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
