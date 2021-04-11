---
ns: MISC
---
## GET_MODEL_DIMENSIONS

```c
// 0x03E8D3D5F549087A 0x91ABB8E0
void GET_MODEL_DIMENSIONS(Hash modelHash, Vector3* minimum, Vector3* maximum);
```

```
Gets the dimensions of a model.
Calculate (maximum - minimum) to get the size, in which case, Y will be how long the model is.
Example from the scripts: MISC::GET_MODEL_DIMENSIONS(ENTITY::GET_ENTITY_MODEL(PLAYER::PLAYER_PED_ID()), &v_1A, &v_17);
```

## Parameters
* **modelHash**: 
* **minimum**: 
* **maximum**: 

