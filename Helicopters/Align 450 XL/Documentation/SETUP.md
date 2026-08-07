# Align 450 XL — setup summary

Starter radio pack for an **XL frame + 120° CCPM flybar head** with **R86C**. Tune curves/rates on the heli — defaults are intentionally generic.

## Hardware / RF

- Align 450 XL–class · flybar · CCPM 120°  
- TX16S MK3 · **model2** · **Align 450 XL**  
- **External** MULTI · **FrSky X → LBT** (`subType: 15,2`) · 6 ch  
- Failsafe: **Custom** (thr low; cyclic mid)  
- optionValue **0** until RF fine-tune after bind  

## Switches

| Switch | Role |
|--------|------|
| SF | Throttle hold |
| SE | Normal / Idle1 / Idle2 |
| SA | Gyro gain → CH5 (if wired) |
| SB | Lights |
| SC | Rates (all start 100% / expo 30) |
| SD | Timer |

## Critical mix rules

- Coll. pitch source = **PIT**  
- CH6 = **CYC3**  
- SF0 → thr override −100  

## Wiring

[r86c-wiring.md](r86c-wiring.md)

## Restore

Copy `MODELS/model2.yml` + `IMAGES/Align450XL.png` (+ RGBLED if needed) onto the SD.
