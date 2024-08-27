---
ns: MISC
---
## GET_WIND_DIRECTION

```c
// 0x1F400FEF721170DA 0x89499A0D
Vector3 GET_WIND_DIRECTION();
```

Used for hunting in singleplayer and for golfing in both sp and online. The [`GET_HEADING_FROM_VECTOR_2D`](#_0x2FFB6B224F4B2926) native can be used to get the wind heading from the direction.

## Return value
The wind direction

## Examples
```lua
CreateThread(function()
    while true do
        local windDirection = GetWindDirection()

        -- Gets the wind direction in degrees (math.atan converts the inverse tangent into radians and then math.deg converts it from radians to degrees)
        local degrees = math.deg(math.atan(windDirection.x, windDirection.y))
        print("wind direction in degrees:", degrees)

        -- Draws an airplane marker above the player's head to show the wind direction
        local coords = GetEntityCoords(PlayerPedId())
        DrawMarker(7, coords.x, coords.y, coords.z + 1.0, windDirection.x, windDirection.y, 0.0, 0.0, 0.0, 0.0, 2.0, 2.0, 2.0, 255, 128, 0, 50, false, false, 2, false, nil, nil, false)

        -- Get world heading from the direction
        print("wind direction in world heading:", GetHeadingFromVector_2d(windDirection.x, windDirection.y))

        Wait(0)
    end
end)
```

```js
setTick(() => {
    const [windDirectionX, windDirectionY, _windDirectionZ] = GetWindDirection();

    // Gets the wind direction in degrees (Math.atan2 converts the inverse tangent into radians and then we coverte the radians to degrees)
    const degrees = Math.atan2(windDirectionX, windDirectionY) * (180 / Math.PI);
    console.log(`wind direction in degrees: ${degrees}`);

    // Draws an airplane marker above the player's head to show the wind direction
    const [playerX, playerY, playerZ] = GetEntityCoords(PlayerPedId());
    DrawMarker(7, playerX, playerY, playerZ + 1.0, windDirectionX, windDirectionY, 0.0, 0.0, 0.0, 0.0, 2.0, 2.0, 2.0, 255, 128, 0, 50, false, false, 2, false, null, null, false);

    // Get world heading from the direction
    console.log(`wind direction in world heading: ${GetHeadingFromVector_2d(windDirectionX, windDirectionY)}`);
});
```

```cs
using static CitizenFX.Core.Native.API;
// ...

public Main() 
{
    Tick += OnTick;
}

private async Task OnTick()
{
    Vector3 windDirection = GetWindDirection();

    // Gets the wind direction in degrees (Math.Atan2 converts the inverse tangent into radians and then we coverte the radians to degrees)
    var degrees = Math.Atan2(windDirection.X, windDirection.Y) * (180 / Math.PI);
    Debug.WriteLine($"wind direction in degrees: {degrees}");

    // Draws an airplane marker above the player's head to show the wind direction
    Vector3 playerCoords = Game.PlayerPed.Position;
    DrawMarker(7, playerCoords.X, playerCoords.Y, playerCoords.Z + 1f, windDirection.X, windDirection.Y, 0f, 0f, 0f, 0f, 2f, 2f, 2f, 255, 128, 0, 50, false, false, 2, false, null, null, false);

    // Get world heading from the direction
    Debug.WriteLine($"wind direction in world heading: {GetHeadingFromVector_2d(windDirection.X, windDirection.Y)}");
}
```
