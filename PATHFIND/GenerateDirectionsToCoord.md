---
ns: PATHFIND
---
## GENERATE_DIRECTIONS_TO_COORD

```c
// 0xF90125F1F79ECDF8 0xED35C094
int GENERATE_DIRECTIONS_TO_COORD(float x, float y, float z, BOOL p3, int* direction, float* vehicle, float* distToNxJunction);
```

```
Usage example:  
Public Function GenerateDirectionsToCoord(Pos As Vector3) As Tuple(Of String, Single, Single)  
        Dim f4, f5, f6 As New OutputArgument()  
        Native.Function.Call(Hash.GENERATE_DIRECTIONS_TO_COORD, Pos.X, Pos.Y, Pos.Z, True, f4, f5, f6)  
        Dim direction As String = f4.GetResult(Of Single)()  
        Return New Tuple(Of String, Single, Single)(direction.Substring(0, 1), f5.GetResult(Of Single)(), f6.GetResult(Of Single)())  
    End Function  
p3 I use 1  
direction:  
0 = You Have Arrived
1 = Recalculating Route, Please make a u-turn where safe  
2 = Please Proceed the Highlighted Route  
3 = In (distToNxJunction) Turn Left  
4 = In (distToNxJunction) Turn Right  
5 = In (distToNxJunction) Go Straight  
6 = In (distToNxJunction) Keep Left  
7 = In (distToNxJunction) Keep Right
8 = In (distToNxJunction) Join the freeway  
9 = In (distToNxJunction) Exit Freeway  
return value set to 0 always  
```

## Parameters
* **x**: 
* **y**: 
* **z**: 
* **p3**: 
* **direction**: 
* **vehicle**: 
* **distToNxJunction**: 

## Return value
