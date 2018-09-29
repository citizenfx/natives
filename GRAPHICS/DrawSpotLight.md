---
ns: GRAPHICS
---
## DRAW_SPOT_LIGHT

```c
// 0xD0F64B265C8C8B33 0xBDBC410C
void DRAW_SPOT_LIGHT(float posX, float posY, float posZ, float dirX, float dirY, float dirZ, int colorR, int colorG, int colorB, float distance, float brightness, float hardness, float radius, float falloff);
```

```
Parameters:  
* pos - coordinate where the spotlight is located  
* dir - the direction vector the spotlight should aim at from its current position  
* r,g,b - color of the spotlight  
* distance - the maximum distance the light can reach  
* brightness - the brightness of the light  
* roundness - "smoothness" of the circle edge  
* radius - the radius size of the spotlight  
* falloff - the falloff size of the light's edge (example: www.i.imgur.com/DemAWeO.jpg)  
Example in C# (spotlight aims at the closest vehicle):  
Vector3 myPos = Game.Player.Character.Position;  
Vehicle nearest = World.GetClosestVehicle(myPos , 1000f);  
Vector3 destinationCoords = nearest.Position;  
Vector3 dirVector = destinationCoords - myPos;  
dirVector.Normalize();  
Function.Call(Hash.DRAW_SPOT_LIGHT, pos.X, pos.Y, pos.Z, dirVector.X, dirVector.Y, dirVector.Z, 255, 255, 255, 100.0f, 1f, 0.0f, 13.0f, 1f);  
```

## Parameters
* **posX**: 
* **posY**: 
* **posZ**: 
* **dirX**: 
* **dirY**: 
* **dirZ**: 
* **colorR**: 
* **colorG**: 
* **colorB**: 
* **distance**: 
* **brightness**: 
* **hardness**: 
* **radius**: 
* **falloff**: 

