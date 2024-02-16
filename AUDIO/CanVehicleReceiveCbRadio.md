---
ns: AUDIO
aliases: ["_IS_VEHICLE_RADIO_LOUD"]
---
## CAN_VEHICLE_RECEIVE_CB_RADIO

```c
// 0x032A116663A4D5AC 0xCBA99F4A
BOOL CAN_VEHICLE_RECEIVE_CB_RADIO(Vehicle vehicle);
```

## Parameters
* **vehicle**:

## Return value
Returns true if the vehicle can currently receive CB radio (ie. it has a capable radio and is in range of a transmitter)

