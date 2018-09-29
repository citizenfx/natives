---
ns: MISC
---
## DELETE_INCIDENT

```c
// 0x556C1AA270D5A207 0x212BD0DC
void DELETE_INCIDENT(int incidentId);
```

```
Delete an incident with a given id.  
=======================================================  
Correction, I have change this to int, instead of int*  
as it doesn't use a pointer to the createdIncident.  
If you try it you will crash (or) freeze.  
=======================================================  
```

## Parameters
* **incidentId**: 

