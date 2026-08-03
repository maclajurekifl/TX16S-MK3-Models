# Titan 450 SE V2 — setup summary

Direct copy of **Align 450 SE V2** radio programming; RF adapted for **FrSky D8R-II Plus**.

## Hardware / RF

- Titan 450 SE V2 · flybar · CCPM 120°  
- TX16S MK3 · EdgeTX · **model1** · name **Titan 450 SE V2**  
- **External** MULTI · **FrSky D → D8** (`subType: 3,0`) · 6 ch  
- Failsafe: set on the **RX** (F/S button) — Multi FrSky D has no TX channel failsafe  

## Switches (same as Align)

| Switch | Role |
|--------|------|
| SF | Throttle hold |
| SE | Normal / Idle1 / Idle2 |
| SA | Gyro gain → CH5 |
| SB | Lights |
| SC | Rates Low / Med / High |
| SD | Timer |

## Critical mix rules

- Coll. pitch source = **PIT**  
- CH6 = **CYC3**  
- SF0 → thr override −100  

## Wiring

[d8r-ii-plus-wiring.md](d8r-ii-plus-wiring.md)

## Restore

Copy `MODELS/model1.yml` + `IMAGES/Titan450.png` (+ RGBLED if needed) onto the SD.
