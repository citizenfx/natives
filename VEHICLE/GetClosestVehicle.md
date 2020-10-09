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
-------------------------------------------------------------------------  
some information above is outdated/incorrect. below has been tested and verified. more testing needed to determine the function of the remaining bits
bit 2	- include planes in search; 1 = include, 0 = exclude
bit 3	- include boats in search; 1 = include, 0 = exclude
bit 4 	- include helicopters in search; 1 = include 0 = exclude
bit 15	- must be 1 or search will always return 0
bit 16	- include police vehicles in search; 1 = include, 0 = exclude
0100000000000010 = search planes only = 16386
0010000000000010 = search boats only = 8194
0001000000000010 = search helicopters only = 4098
0111000000000010 = search planes/boats/helicopters = 28674
0000000000000010 = search cars/cycles only = 2
because bit 16 represents inclusion of police vehicles, you can just add 1 to the integer value to include police vehicles in the search. ie:
16386 = 0001000000000010 = (search for helicopters, excluding police)
16837 = 0001000000000011 = (search for helicopters, including police)
```

## Parameters
* **x**: 
* **y**: 
* **z**: 
* **radius**: 
* **modelHash**: 
* **flags**: 

## Return value
