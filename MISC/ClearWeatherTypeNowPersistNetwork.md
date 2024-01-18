---
ns: MISC
aliases: ["0x0CF97F497FE7D048"]
---
## CLEAR_WEATHER_TYPE_NOW_PERSIST_NETWORK

```c
// 0x0CF97F497FE7D048
void CLEAR_WEATHER_TYPE_NOW_PERSIST_NETWORK(cs_type(float) int transitionTimeInMs);
```

Clears the active weather type after a specific amount of time determined by `transitionTimeInMs`.

## Parameters
* **transitionTimeInMs**: Transition time in milliseconds.

## Examples
```lua
RegisterCommand('weathertransition', function(source, args)
    -- Set the weather type to foggy so we can see the change
    SetWeatherTypeNowPersist("FOGGY")
    -- Clear the weather and run the transition
    local transitionTimeInMs = tonumber(args[1]) or 5000
    if transitionTimeInMs > 0 then
        ClearWeatherTypeNowPersistNetwork(transitionTimeInMs)
    end
end, false)
```

