---
ns: SHAPETEST
aliases: ["_GET_RAYCAST_RESULT"]
---
## GET_SHAPE_TEST_RESULT

```c
// 0x3D87450E15D98694 0xF3C2875A
int GET_SHAPE_TEST_RESULT(int rayHandle, BOOL* hit, Vector3* endCoords, Vector3* surfaceNormal, Entity* entityHit);
```

```
Parameters:  
rayHandle - Ray Handle from a casted ray, as returned by CAST_RAY_POINT_TO_POINT  
hit - Where to store whether or not it hit anything. False is when the ray reached its destination.  
endCoords - Where to store the world-coords of where the ray was stopped (by hitting its desired max range or by colliding with an entity/the map)  
surfaceNormal - Where to store the surface-normal coords (NOT relative to the game world) of where the entity was hit by the ray  
entityHit - Where to store the handle of the entity hit by the ray  
Returns:  
Result? Some type of enum.  
NOTE: To get the offset-coords of where the ray hit relative to the entity that it hit (which is NOT the same as surfaceNormal), you can use these two natives:  
Vector3 offset = ENTITY::GET_OFFSET_FROM_ENTITY_GIVEN_WORLD_COORDS(entityHit, endCoords.x, endCoords.y, endCoords.z);  
Vector3 entitySpotCoords = ENTITY::GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(entityHit, offset.x, offset.y, offset.z);  
Use ENTITY::GET_ENTITY_TYPE(entityHit) to quickly distinguish what type of entity you hit (ped/vehicle/object - 1/2/3)  
```

## Parameters
* **rayHandle**: 
* **hit**: 
* **endCoords**: 
* **surfaceNormal**: 
* **entityHit**: 

## Return value
