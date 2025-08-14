---
ns: TASK
---
## SET_ANIM_WEIGHT

```c
// 0x207F1A47C0342F48 0x17229D98
void SET_ANIM_WEIGHT(Entity entity, float blendWeight, int priority, int index, BOOL secondary);
```

Sets the blend weight of a clip playing on a scripted anim task.

```c
// The comments don't really matter
enum ANIM_PRIORITY_FLAGS {
    AF_PRIORITY_LOW = 0,                                // Use the lowest TASK_SCRIPTED_ANIMATION slot
    AF_PRIORITY_MEDIUM = 1,                             // Use the medium TASK_SCRIPTED_ANIMATION slot
    AF_PRIORITY_HIGH = 2                                // Use the high TASK_SCRIPTED_ANIMATION slot
}
```

## Parameters
* **entity**: Entity to set the weight.
* **blendWeight**: The weight to set.
* **priority**: The priority level the clip is playing on (read description).
* **index**: The index of the clip to set on the given priority.
* **secondary**:
