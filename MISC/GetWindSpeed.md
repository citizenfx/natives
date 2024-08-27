---
ns: MISC
---
## GET_WIND_SPEED

```c
// 0xA8CF1CC0AFCD3F12 0x098F0F3C
float GET_WIND_SPEED();
```

## Return value
The wind speed in meters per second

## Examples
```lua
local beaufortScale = {
    [0] = 0.2,
    [1] = 1.5,
    [2] = 3.3,
    [3] = 5.4,
    [4] = 7.9,
    [5] = 10.7,
    [6] = 13.8,
    [7] = 17.1,
    [8] = 20.7,
    [9] = 24.4,
    [10] = 28.4,
    [11] = 32.6,
    [12] = 32.7
}

local windSpeed = GetWindSpeed()
for i = 0, 12 do
    if windSpeed <= beaufortScale[i] or i == 12 then
        print(string.format("The current wind speed (%.2f m/s) is the equivalent to Beaufort number %s on the Beaufort scale", windSpeed, i))
        break
    end
end
```

```js
const beaufortScale = [
    0.2,
    1.5,
    3.3,
    5.4,
    7.9,
    10.7,
    13.8,
    17.1,
    20.7,
    24.4,
    28.4,
    32.6,
    32.7
];

const windSpeed = GetWindSpeed();
for (let i = 0; i < beaufortScale.length; i++) {
    if (windSpeed <= beaufortScale[i] || i == 12) {
        console.log(`The current wind speed (${windSpeed.toFixed(2)} m/s) is the equivalent to Beaufort number ${i} on the Beaufort scale`);
        break;
    };
};
```

```cs
// TODO
```
