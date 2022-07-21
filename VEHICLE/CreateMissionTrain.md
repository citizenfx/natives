---
ns: VEHICLE
---
## CREATE_MISSION_TRAIN

```c
// 0x63C6CCA8E68AE8C8 0xD4C2EAFD
Vehicle CREATE_MISSION_TRAIN(int variation, float x, float y, float z, BOOL direction);
```

## Parameters
* **variation**: Train id (see below for more information)
* **x**: Spawn coordinate X component.
* **y**: Spawn coordinate Y component.
* **z**: Spawn coordinate Z component.
* **direction**: The direction in which the train will go (true or false)

Train models must be [requested](#_0x963D27A58DF860AC) before use. See trains.xml in your GTA V folder to change the varations of the trains

### Train Models and variation id:
* freight **id: 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,23** - Different types of carriage (do not forget to [request](#_0x963D27A58DF860AC) the carriages! (18: no carriage) (8: long train)
* metrotrain **id: 21,24** - I recommend the 24 to get the carriage

### Carriage Models:
* freightcar 
* freightcar2 (Added v2372)
* freightcont1
* freightcont2
* freightgrain
* metrotrain
* tankercar

## Return value
A script handle for the train, or 0 if the train failed to be created.
