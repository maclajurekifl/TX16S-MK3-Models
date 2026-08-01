# Align 450 SE V2 — setup summary

Compact cheat sheet. Full narrative lives in the [model home](README.md) and linked guides.

## Hardware

- Align 450 SE V2 · flybar · CCPM 120°  
- TX16S MK3 · EdgeTX  
- Spektrum AR6200  

## Switches

| Switch | Role |
|--------|------|
| SF | Throttle hold |
| SE | Normal / Idle1 / Idle2 |
| SA | Gyro gain |
| SB | Lights |
| SC | Rates Low / Med / High |
| SD | Timer |

## Critical mix rules

- Coll. pitch source = **PIT** (curves on that input)  
- AUX1 = **CYC3**  
- THRO = thr curves per FM  
- Cyclic calm = **SC** rates + expo (not pitch curves)  

## Curves (targets)

```
Normal  CTH: -100,-100 | -50,-90 | 0,-10 | 50,45 | 100,80
Normal  CPI: -100,-35  | -50,15  | 0,40  | 50,55 | 100,70
Idle1   CT1: -100,70   | -50,75  | 0,80  | 50,80 | 100,80
Idle1   CP1: -100,-75  | -50,-40 | 0,0   | 50,40 | 100,75
Idle2   CT2: -100,80   | -50,85  | 0,90  | 50,90 | 100,90
Idle2   CP2: -100,-90  | -50,-50 | 0,0   | 50,50 | 100,90
```

## Pack

3S fly · 2S tune only  

## Restore

[RESTORE.md](RESTORE.md) · [`../SD Card Files/`](../SD%20Card%20Files/)
