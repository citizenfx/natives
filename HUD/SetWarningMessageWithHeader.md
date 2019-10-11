---
ns: HUD
aliases: ["_SET_WARNING_MESSAGE_2"]
---
## SET_WARNING_MESSAGE_WITH_HEADER

```c
// 0xDC38CC1E35B6A5D7 0x2DB9EAB5
void SET_WARNING_MESSAGE_WITH_HEADER(char* titleMsg, char* entryLine1, int flags, char* promptMsg, BOOL p4, Any p5, BOOL background, Any* p7, BOOL showBg);
```

```
You can only use text entries. No custom text.  
C# Example :  
Function.Call(Hash._SET_WARNING_MESSAGE_2, "HUD_QUIT", "HUD_CGIGNORE", 2, "HUD_CGINVITE", 0, -1, 0, 0, 1);  
you can recreate this easily with scaleforms  
---------------  
Fixed native name, from before nativedb restoration.  
```

```
NativeDB Added Parameter 10: Any p9
```

## Parameters
* **titleMsg**: 
* **entryLine1**: 
* **flags**: 
* **promptMsg**: 
* **p4**: 
* **p5**: 
* **background**: 
* **p7**: 
* **showBg**: 

