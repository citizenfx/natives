---
ns: VEHICLE
aliases: ["0xB5CC40FBCB586380","_IS_VEHICLE_SIREN_SOUND_ON"]
---
## IS_VEHICLE_SIREN_AUDIO_ON

```c
// 0xB5CC40FBCB586380 0xC9458688
BOOL IS_VEHICLE_SIREN_AUDIO_ON(Vehicle vehicle);
```

Checks if the siren audio is currently playing on the given vehicle.

This only checks the sound not the lights. A vehicle can have its siren lights active while the audio is silent, for example when [`SET_VEHICLE_HAS_MUTED_SIRENS`](#_0xD8050E0EB60CF274) has been used to suppress the sound.

## Parameters

* **vehicle**: The vehicle to check.

## Return value

Returns `true` if the siren audio is currently playing, `false` if it is silent or the vehicle does not have a siren.

## Examples

```lua
local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)

if IsVehicleSirenAudioOn(vehicle) then
    print("Siren is audible")
end
```

```js
const vehicle = GetVehiclePedIsIn(PlayerPedId(), false);

if (IsVehicleSirenAudioOn(vehicle)) {
    console.log("Siren is audible");
}
```