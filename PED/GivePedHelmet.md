---
ns: PED
---
## GIVE_PED_HELMET

```c
// 0x54C7C4A94367717E 0x1862A461
void GIVE_PED_HELMET(Ped ped, BOOL cannotRemove, int helmetFlag, int textureIndex);
```

Give the ped a helmet. Possible flags:
| Helmet name               | Flag      |
|---------------------------|-----------|
| Police Motorcycle Helmet  | 1024      |
| Regular Motorcycle Helmet | 4096      |
| Fireman Helmet            | 16384     |
| Pilot Headset             | 32768     |
| Pilot Helmet              | 65536     |

## Parameters
* **ped**: Ped index.
* **cannotRemove**: Can remove helmet or not.
* **helmetFlag**: Flag for the helmet.
* **textureIndex**: Texture index.

