---
ns: VEHICLE
aliases: ["_SET_BIKE_LEAN_ANGLE"]
---
## SET_BIKE_ON_STAND

```c
// 0x9CFA4896C3A53CBB 0x15D40761
void SET_BIKE_ON_STAND(Vehicle vehicle, float x, float y);
```

```
Only works on bikes, both X and Y work in the -1 - 1 range.
X forces the bike to turn left or right (-1, 1)
Y forces the bike to lean to the left or to the right (-1, 1)
Example with X -1/Y 1
http://i.imgur.com/TgIuAPJ.jpg
```

## Parameters
* **vehicle**: 
* **x**: 
* **y**: 

