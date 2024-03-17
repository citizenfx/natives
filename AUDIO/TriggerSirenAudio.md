---
ns: AUDIO
aliases: ["0x66C3FB05206041BA", "_TRIGGER_SIREN"]
---
## TRIGGER_SIREN_AUDIO

```c
// 0x66C3FB05206041BA
void TRIGGER_SIREN_AUDIO(Vehicle vehicle);
```

Sets the siren audio active, if attempting to enable a siren on a driverless vehicle,
you may need to use this to kick off the actual sound (generally we only trigger the audio if
a driver is in the vehicle)


## Parameters
* **vehicle**:
