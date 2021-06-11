---
ns: GRAPHICS
aliases: ["0x799017F9E3B10112"]
---
## _DRAW_SPHERE

```c
// 0x799017F9E3B10112
void _DRAW_SPHERE(float x, float y, float z, float radius, int r, int g, int b, float opacity);
```

Draws a 3D sphere, typically seen in the GTA:O freemode event "Penned In".

Example [image](https://imgur.com/nCbtS4H):
```lua
DrawSphere(35.45, 172.66, 126.22, 1.0, 0, 0, 255, 0.2)
```

## Parameters
* **x**: X coordinate of the sphere
* **y**: Y coordinate of the sphere
* **z**: Z coordinate of the sphere
* **radius**: Size of the sphere, `1.0` = 1 meter
* **r**: Color red `0`-`255`
* **g**: Color green `0`-`255`
* **b**: Color blue `0`-`255`
* **opacity**: Opacity from `0.0`-`1.0`
