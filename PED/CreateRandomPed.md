---
ns: PED
---
## CREATE_RANDOM_PED

```c
// 0xB4AC7D0CF06BFE8F 0x5A949543
Ped CREATE_RANDOM_PED(float posX, float posY, float posZ);
```

```
vb.net
Dim ped_handle As Integer
                    With Game.Player.Character
                        Dim pos As Vector3 = .Position + .ForwardVector * 3
                        ped_handle = Native.Function.Call(Of Integer)(Hash.CREATE_RANDOM_PED, pos.X, pos.Y, pos.Z)
                    End With
Creates a Ped at the specified location, returns the Ped Handle.
Ped will not act until SET_PED_AS_NO_LONGER_NEEDED is called.
```

## Parameters
* **posX**: 
* **posY**: 
* **posZ**: 

## Return value
