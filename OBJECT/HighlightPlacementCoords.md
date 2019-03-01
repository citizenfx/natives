---
ns: OBJECT
aliases: ["0x3430676B11CDF21D"]
---
## _HIGHLIGHT_PLACEMENT_COORDS

```c
// 0x3430676B11CDF21D 0x63B02FAD
void _HIGHLIGHT_PLACEMENT_COORDS(float x, float y, float z, int colorIndex);
```

Draws 50% of a sphere (like the top part is cut off) "spotlight" marker at `x`, `y`, `z`.

List of known colors:

|colorIndex|description|
|---------:|:----------|
|        -1|None, values less than -1 crash |
|         0|Red |
|         1|Green |
|         2|Blue |
|         3|Large green |
|         4|Faded green (barely visible) |
|         5|Faded green (slightly more visible than 4) |
|       179|Faded black |
|       359|Black |
|       439|Very large black area |
|       479|Faded black (barely visible) |
|       519|Black, but only a very small area |
|       639|Extremely large black area (like 20 meters across) |
|       679|Black, but only a small area |
|       719|Black, but only a very small area |
|       799|Faded black (barely visible) |
|       939|Red (faded) |
|      1072|Green |
|      1119|Extremely large black area (similar to 639) |
|      1246|Black |
|      1251|Dark red (Strange "blood"-like effect) |



## Parameters
* **x**: X coord.
* **y**: Y coord.
* **z**: Z coord.
* **colorIndex**: Color index, see table above. 

