# Switch map & keybinds

![XK K110S](assets/XK110.png)

Physical controls on the TX16S for **XK 110s** (`model4.yml`).

## Switches

| Switch | Function | Positions (this backup) |
|--------|----------|-------------------------|
| **SF** | **Throttle hold** | **SF0** = override CH3 to **−100** (motor cut) |
| **SE** | **Flight mode** | ↑ **Normal** · − **Zero** · ↓ **Idle-Up** (`SE2`) |
| **SA** | **6G / 3D** | → **CH5** (same job as stock X6 **G.S / Gear**) |
| **SB** | **RGB lights** | Up `srain` · Mid `red` · Down `off` · **S1** brightness · **S2** speed |
| **SC** | **Dual rates** | ↑ High · − High · ↓ **Low** (`SC2`) |
| **SD** | **Flight timer** | **SD1** start · **SD2** reset |

Confirm live labels on your radio if you remapped anything after this backup.

### How to tell 6G vs 3D (**SA**)

With **SF hold ON**, motor off, after gyro init:

| After you tilt cyclic, then center stick | Mode |
|------------------------------------------|------|
| Swash **comes back toward level** | **6G** |
| Swash **stays tilted** | **3D** |

You should get **one of each** on the two **SA** positions. Channel monitor: **CH5** should jump ≈ **±100** when you flip SA (not stuck mid).

### Flight mode note (**SE**)

| Position | Flight mode name | Thr / pitch curves |
|----------|------------------|--------------------|
| ↑ (default) | **Normal** | CTN + CPN |
| − (`SE1`) | **Zero** | Still Normal mixes (no Idle-Up REPL) |
| ↓ (`SE2`) | **Idle Up** | CTI + CPI |

Screen text on this model: `SE - Normal/Zero/Idle-Up`.

## Sticks (Mode 2)

| Stick | Controls |
|-------|----------|
| Collective / throttle (left) | Head speed (CH3) + collective pitch (CH6) via curves |
| Rudder (left yaw) | Tail |
| Elevator (right fore/aft) | Cyclic pitch |
| Aileron (right left/right) | Cyclic roll |

## Recommended “default” before spool / plug-in

| Control | Set to |
|---------|--------|
| **SF** | Hold **ON** |
| **SE** | **Normal** (↑) |
| **SC** | **Low** while learning · **High** for board calibrations that need full throw |
| **SA** | **3D** for mechanical level / gyro cal · **6G** for hover cal / assisted hover |
| Collective | Stick **fully down** until ready |
| Ail / Ele trim & subtrim | **0** |

## Related

- [Calibration order](calibration.md)
- [How to fly](flying-guide.md)
- [Flight modes & curves](flight-modes-and-curves.md)
- [← Model home](README.md)
