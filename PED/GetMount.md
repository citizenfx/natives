---
ns: PED
---
## GET_MOUNT

```c
// 0xE7E11B8DCBED1058 0xDD31EC4E
Ped GET_MOUNT(Ped ped);
```

```
Function just returns 0  
void __fastcall ped__get_mount(NativeContext *a1)  
{  
  NativeContext *v1; // rbx@1  
  v1 = a1;  
  GetAddressOfPedFromScriptHandle(a1->Args->Arg1);  
  v1->Returns->Item1= 0;  
}  
```

## Parameters
* **ped**: 

## Return value
