---
ns: MISC
---
## IS_INCIDENT_VALID

```c
// 0xC8BC6461E629BEAA 0x31FD0BA4
BOOL IS_INCIDENT_VALID(int incidentId);
```

```
=======================================================  
Correction, I have change this to int, instead of int*  
as it doesn't use a pointer to the createdIncident.  
If you try it you will crash (or) freeze.  
=======================================================  
```

## Parameters
* **incidentId**: 

## Return value
