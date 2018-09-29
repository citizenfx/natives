---
ns: PED
---
## GET_PED_NEARBY_VEHICLES

```c
// 0xCFF869CBFA210D82 0xCB716F68
int GET_PED_NEARBY_VEHICLES(Ped ped, int* sizeAndVehs);
```

```
Returns size of array, passed into the second variable.  
See below for usage information.  
This function actually requires a struct, where the first value is the maximum number of elements to return.  Here is a sample of how I was able to get it to work correctly, without yet knowing the struct format.  
//Setup the array  
	const int numElements = 10;  
	const int arrSize = numElements * 2 + 2;  
	Any veh[arrSize];  
	//0 index is the size of the array  
	veh[0] = numElements;  
	int count = PED::GET_PED_NEARBY_VEHICLES(PLAYER::PLAYER_PED_ID(), veh);  
	if (veh != NULL)  
	{  
//Simple loop to go through results  
for (int i = 0; i < count; i++)  
{  
	int offsettedID = i * 2 + 2;  
	//Make sure it exists  
	if (veh[offsettedID] != NULL && ENTITY::DOES_ENTITY_EXIST(veh[offsettedID]))  
	{  
//Do something  
	}  
}  
	}    
Here's the right way to do it (console and pc):  
pastebin.com/SsFej963  
```

## Parameters
* **ped**: 
* **sizeAndVehs**: 

## Return value
