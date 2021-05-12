---
ns: FILES
---
## GET_SHOP_PED_COMPONENT

```c
// 0x74C0E2A57EC66760 0xB39677C5
void GET_SHOP_PED_COMPONENT(Hash componentHash, Any* outComponent);
```

```
More info here: https://gist.github.com/root-cause/3b80234367b0c856d60bf5cb4b826f86
```

## Parameters
* **componentHash**: 
* **outComponent**: 

## Examples
```cs
using System;
using System.Security;
using System.Runtime.InteropServices;
using CitizenFX.Core;
using CitizenFX.Core.Native;

[SecurityCritical]
[StructLayout(LayoutKind.Explicit, Size = 0x88)]
public unsafe struct PedComponentData
{
    [FieldOffset(0x00)] private int lockHash;

    [FieldOffset(0x08)] private int hash;

    [FieldOffset(0x10)] private int locate;

    [FieldOffset(0x18)] private int drawable;

    [FieldOffset(0x20)] private int texture;

    [FieldOffset(0x28)] private int f_5;

    [FieldOffset(0x30)] private int componentType;

    [FieldOffset(0x38)] private int f_7;

    [FieldOffset(0x40)] private int f_8;
    
    [FieldOffset(0x48)] private fixed sbyte gxt[0x40];

    public int Drawable => drawable;
    public int Texture => texture;
}

[SecurityCritical]
public static Tuple<int, int> GetProperTorso(this Ped ped)
{   
    if (ped.Model.Hash != API.GetHashKey("mp_m_freemode_01") && ped.Model.Hash != API.GetHashKey("mp_f_freemode_01"))
        return new Tuple<int, int>(-1, -1);

    uint topHash = (uint) API.GetHashNameForComponent(ped.Handle, 11, API.GetPedDrawableVariation(ped.Handle, 11), API.GetPedTextureVariation(ped.Handle, 11));
    int fcTorsoDrawable = -1, fcTorsoTexture = -1;
    
    for (int i = 0; i < API.GetNumForcedComponents(topHash); i++)
    {
        int fcNameHash = 0, fcEnumValue = 0, fcType = 0;
        API.GetForcedComponent(topHash, i, ref fcNameHash, ref fcEnumValue, ref fcType);
        
        if (fcType != 3) continue;
        if (fcNameHash == 0 || fcNameHash == API.GetHashKey("0"))
        {
            fcTorsoDrawable = fcEnumValue;
            fcTorsoTexture = 0;
        }
        else
        {
            PedComponentData torsoData;
            unsafe
            {
                Function.Call(Hash.GET_SHOP_PED_COMPONENT, (uint) fcNameHash, &torsoData);
            }
            
            fcTorsoDrawable = torsoData.Drawable;
            fcTorsoTexture = torsoData.Texture;
        }
    }
    
    return new Tuple<int, int>(fcTorsoDrawable, fcTorsoTexture);
}
```
