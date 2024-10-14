---
ns: TASK
---
## TASK_FOLLOW_NAV_MESH_TO_COORD

```c
// 0x15D3A79D4E44B913 0xFE4A10D9
void TASK_FOLLOW_NAV_MESH_TO_COORD(Ped ped, float x, float y, float z, float moveBlendRatio, int time, float radius, cs_type(BOOL) int flags, float finalHeading);
```

Sometimes a path may not be able to be found. This could happen because there simply isn't any way to get there, or maybe a bunch of dynamic objects have blocked the way, 
or maybe the destination is too far away. In this case the ped will simply stand still.
To identify when this has happened, you can use GET_NAVMESH_ROUTE_RESULT. This will help you find situations where peds cannot get to their target.

```c
enum eNavScriptFlags {
    // Default flag
    ENAV_DEFAULT = 0,
    // Will ensure the ped continues to move whilst waiting for the path
    // to be found, and will not slow down at the end of their route.
    ENAV_NO_STOPPING = 1,
    // Performs a slide-to-coord at the end of the task. This requires that the
    // accompanying NAVDATA structure has the 'SlideToCoordHeading' member set correctly.
    ENAV_ADV_SLIDE_TO_COORD_AND_ACHIEVE_HEADING_AT_END = 2,
    // If the navmesh is not loaded in under the target position, then this will
    // cause the ped to get as close as is possible on whatever navmesh is loaded.
    // The navmesh must still be loaded at the path start.
    ENAV_GO_FAR_AS_POSSIBLE_IF_TARGET_NAVMESH_NOT_LOADED = 4,
    // Will allow navigation underwater - by default this is not allowed.
    ENAV_ALLOW_SWIMMING_UNDERWATER = 8,
    // Will only allow navigation on pavements. If the path starts or ends off
    // the pavement, the command will fail. Likewise if no pavement-only route
    // can be found even although the start and end are on pavement.
    ENAV_KEEP_TO_PAVEMENTS = 16,
    // Prevents the path from entering water at all.
    ENAV_NEVER_ENTER_WATER = 32,
    // Disables object-avoidance for this path. The ped may still make minor
    // steering adjustments to avoid objects, but will not pathfind around them.
    ENAV_DONT_AVOID_OBJECTS = 64,
    // Specifies that the navmesh route will only be able to traverse up slopes
    // which are under the angle specified, in the MaxSlopeNavigable member of the accompanying NAVDATA structure.
    ENAV_ADVANCED_USE_MAX_SLOPE_NAVIGABLE = 128,
    // Unused.
    ENAV_STOP_EXACTLY = 512,
    // The entity will look ahead in its path for a longer distance to make the
    // walk/run start go more in the right direction.
    ENAV_ACCURATE_WALKRUN_START = 1024,
    // Disables ped-avoidance for this path while we move.
    ENAV_DONT_AVOID_PEDS = 2048,
    // If target pos is inside the boundingbox of an object it will otherwise be pushed out.
    ENAV_DONT_ADJUST_TARGET_POSITION = 4096,
    // Turns off the default behaviour, which is to stop exactly at the target position.
    // Occasionally this can cause footsliding/skating problems.
    ENAV_SUPPRESS_EXACT_STOP = 8192,
    // Prevents the path-search from finding paths outside of this search distance.
    // This can be used to prevent peds from finding long undesired routes.
    ENAV_ADVANCED_USE_CLAMP_MAX_SEARCH_DISTANCE = 16384,
    // Pulls out the paths from edges at corners for a longer distance, to prevent peds walking into stuff.
    ENAV_PULL_FROM_EDGE_EXTRA = 32768
};
```

## Parameters
* **ped**: Ped Index.
* **x**: X Position Coordinate.
* **y**: Y Position Coordinate.
* **z**: Z Position Coordinate
* **moveBlendRatio**: Ratio for ped movement (0 to 3.0 in the following order: still, walk, run and sprint)
* **time**: INT value in milliseconds.
* **radius**: distance from the final coordinates that the pedestrian should be to consider itself at the target.
* **flags**: Navigation Flags for the ped (see `eNavScriptFlags`).
* **finalHeading**: Peds heading when finished.

