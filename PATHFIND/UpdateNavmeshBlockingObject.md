---
ns: PATHFIND
---
## UPDATE_NAVMESH_BLOCKING_OBJECT

```c
// 0x109E99373F290687 0x4E9776D0
void UPDATE_NAVMESH_BLOCKING_OBJECT(int ObjectId, float x1, float y1, float z1, float x2, float y2, float z2, float heading, Any Flags);
```

```
Blocking Object Flags:

Default		    = 0;     
Wander Path		= 1;     Blocking object will block wander paths
Shortest Path	= 2;	 Blocking object will block (regular) shortest-paths
Flee Path		= 4;     Blocking object will block flee paths	
All Paths	    = 7;     Blocking Object will block all paths
```


## Parameters
* **ObjectId**: 
* **x1**: X position coordinate.
* **y1**: Y position coordinate.
* **z1**: Z position coordinate.
* **x2**: X Scale.
* **y2**: Y Scale.
* **z2**: Z Scale.
* **heading**: Heading of the blocking object.
* **Flags**: Flags for the blocking object.

