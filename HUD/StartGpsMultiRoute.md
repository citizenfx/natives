---
ns: HUD
aliases: ["0x3D3D15AF7BCAAF83"]
---
## START_GPS_MULTI_ROUTE

```c
// 0x3D3D15AF7BCAAF83 0xC3DCBEDB
void START_GPS_MULTI_ROUTE(int hudColor, BOOL routeFromPlayer, BOOL displayOnFoot);
```

Starts a new GPS multi-route, allowing you to create custom GPS paths.
GPS functions like the waypoint, except it can contain multiple points it's forced to go through.
Once the player has passed a point, the GPS will no longer force its path through it.

Works independently from the player-placed waypoint and blip routes.

**Example result:**

![](https://i.imgur.com/ZZHQatX.png)

## Parameters
* **hudColor**: The HUD color of the GPS path.
* **routeFromPlayer**: Makes the GPS draw a path from the player to the next point, rather than the original path from the previous point.
* **displayOnFoot**: Draws the GPS path regardless if the player is in a vehicle or not.

## Examples
```lua
-- Clear any old route first
ClearGpsMultiRoute()

-- Start a new route
StartGpsMultiRoute(6, false, true)

-- Add the points
AddPointToGpsMultiRoute(1638.2155761719, -2344.685546875, 95.610511779785)
AddPointToGpsMultiRoute(1653.0858154297, -2068.8654785156, 96.737915039063)
AddPointToGpsMultiRoute(1451.9561767578, -2113.5344238281, 56.082130432129)
AddPointToGpsMultiRoute(1540.6088867188, -2514.4519042969, 58.842422485352)
AddPointToGpsMultiRoute(1638.2155761719, -2344.685546875, 95.610511779785)

-- Set the route to render
SetGpsMultiRouteRender(true)
```
