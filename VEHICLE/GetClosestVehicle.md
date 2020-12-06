---
ns: VEHICLE
---
## GET_CLOSEST_VEHICLE

```c
// 0xF73EB622C4F1689B 0xD7E26B2C
Vehicle GET_CLOSEST_VEHICLE(float x, float y, float z, float radius, Hash modelHash, int flags);
```

```
Example usage  
VEHICLE::GET_CLOSEST_VEHICLE(x, y, z, radius, hash, unknown leave at 70)   
x, y, z: Position to get closest vehicle to.  
radius: Max radius to get a vehicle.  
modelHash: Limit to vehicles with this model. 0 for any.  
flags: The bitwise flags altering the function's behaviour.  
Does not return police cars or helicopters.  
It seems to return police cars for me, does not seem to return helicopters, planes or boats for some reason  
Only returns non police cars and motorbikes with the flag set to 70 and modelHash to 0. ModelHash seems to always be 0 when not a modelHash in the scripts, as stated above.   
These flags were found in the b617d scripts: 0,2,4,6,7,23,127,260,2146,2175,12294,16384,16386,20503,32768,67590,67711,98309,100359.  
Converted to binary, each bit probably represents a flag as explained regarding another native here: gtaforums.com/topic/822314-guide-driving-styles  
Conversion of found flags to binary: pastebin.com/kghNFkRi  
At exactly 16384 which is 0100000000000000 in binary and 4000 in hexadecimal only planes are returned.   
It's probably more convenient to use worldGetAllVehicles(int *arr, int arrSize) and check the shortest distance yourself and sort if you want by checking the vehicle type with for example VEHICLE::IS_THIS_MODEL_A_BOAT  
-------------------------------------------------------------------------  
Conclusion: This native is not worth trying to use. Use something like this instead: pastebin.com/xiFdXa7h
Use flag 127 to return police cars
```

## Parameters
* **x**: 
* **y**: 
* **z**: 
* **radius**: 
* **modelHash**: 
* **flags**: 

## Return value
