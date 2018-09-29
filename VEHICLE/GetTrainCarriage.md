---
ns: VEHICLE
---
## GET_TRAIN_CARRIAGE

```c
// 0x08AAFD0814722BC3 0x2544E7A6
Entity GET_TRAIN_CARRIAGE(Vehicle train, int trailerNumber);
```

```
Corrected p1. it's basically the 'carriage/trailer number'. So if the train has 3 trailers you'd call the native once with a var or 3 times with 1, 2, 3.  
```

## Parameters
* **train**: 
* **trailerNumber**: 

## Return value
