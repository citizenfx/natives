---
ns: OBJECT
aliases: ["0x77F33F2CCF64B3AA"]
---
## _SET_OBJECT_SOMETHING

```c
// 0x77F33F2CCF64B3AA 0x483C5C88
void _SET_OBJECT_SOMETHING(Object object, BOOL p1);
```

```
i don't know what this does  
```<pre>  
void __fastcall OBJECT___0x77F33F2CCF64B3AA_START(scrNativeCallContext *args)  
{  
  bool p2; // bl@1  
  CObject *pObject; // rax@1  
  scrNativeCallContextArgStruct *pArgs; // rax@1  
  pArgs = args->pArgs;  
  p2 = pArgs->a2.BOOL != 0;  
  pObject = getAddressOfObject(pArgs->a1.Object);  
  if ( pObject )  
  {  
    pObject->field_425 &= 0xDFu;                // 1101 1111 (clear bit 6)  
    pObject->field_425 |= 32 * p2;              // bit 6 = p2  
  }  
}  
// sfink  
// note to AB: please set "white-space: pre" in css  
```  
```

## Parameters
* **object**: 
* **p1**: 

