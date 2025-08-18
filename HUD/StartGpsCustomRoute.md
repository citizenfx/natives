---
ns: HUD
aliases: ["0xDB34E8D56FC13B08"]
---
## START_GPS_CUSTOM_ROUTE

```c
// 0xDB34E8D56FC13B08 0x7F93799B
void START_GPS_CUSTOM_ROUTE(int hudColor, BOOL displayOnFoot, BOOL followPlayer);
```

Starts a new GPS custom-route, allowing you to plot lines on the map.
Lines are drawn directly between points.
The GPS custom route works like the GPS multi route, except it does not follow roads.

**Example result:**

![](https://i.imgur.com/BDm5pzt.png)

## Parameters
* **hudColor**: The HUD color of the GPS path.
* **displayOnFoot**: Draws the path regardless if the player is in a vehicle or not.
* **followPlayer**: Draw the path partially between the previous and next point based on the players position between them. When false, the GPS appears to not disappear after the last leg is completed.

## Examples
```lua
-- Clear any old route first
ClearGpsCustomRoute()

-- Start a new route
StartGpsCustomRoute(6, false, true)

-- Add the points
AddPointToGpsCustomRoute(1638.2155761719, -2344.685546875, 95.610511779785)
AddPointToGpsCustomRoute(1653.0858154297, -2068.8654785156, 96.737915039063)
AddPointToGpsCustomRoute(1451.9561767578, -2113.5344238281, 56.082130432129)
AddPointToGpsCustomRoute(1540.6088867188, -2514.4519042969, 58.842422485352)
AddPointToGpsCustomRoute(1638.2155761719, -2344.685546875, 95.610511779785)

-- Set the route to render
SetGpsCustomRouteRender(true, 16, 16)
```
