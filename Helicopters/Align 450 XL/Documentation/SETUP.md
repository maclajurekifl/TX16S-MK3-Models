# Align 450 XL — setup summary

Independent swash servos (not eCCPM): **roll / pitch / elevate** each on their own channel. **R86C** · FrSky X.

## Hardware / RF

- Align 450 XL–class · flybar · **independent** cyclic + collective servos  
- TX16S MK3 · **model2** · **Align 450 XL**  
- **External** MULTI · **FrSky X → LBT** · 6 ch  
- Failsafe: **Custom** (thr low; cyclic mid)  

## Switches

| Switch | Role |
|--------|------|
| SF | Throttle hold |
| SE | Normal / Idle1 / Idle2 |
| SA | Gyro gain → CH5 (if wired) |
| SB | Lights |
| SC | Rates Low / Med / High |
| SD | Timer |

## Mix map (independent)

| CH | Function | Source |
|----|----------|--------|
| CH1 | ESC / motor | Thr + CTH/CT1/CT2 |
| **CH2** | **Roll** only | Ail (`I0`) + rates |
| **CH3** | **Elevate / collective** only | Pit (`I4`) + CPI/CP1/CP2 |
| CH4 | Tail gyro | Rud |
| CH5 | Gyro gain | SA |
| **CH6** | **Pitch** (fore/aft) only | Ele (`I1`) + rates |

Heli swash mixer: **TYPE_NONE** (no CYC1/2/3).

## Wiring

[r86c-wiring.md](r86c-wiring.md)

## Restore

Copy `MODELS/model2.yml` + `IMAGES/Align450XL.png` (+ RGBLED if needed) onto the SD.
