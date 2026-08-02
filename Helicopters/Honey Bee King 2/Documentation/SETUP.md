# Honey Bee King 2 — setup summary

Compact cheat sheet. Full narrative lives in the [model home](README.md) and linked guides. Values match `model5.yml` from the TX SD backup.

## Hardware

- E-Sky Honey Bee King 2 · flybar · CCPM 120°  
- TX16S MK3 · EdgeTX · model **Esky HBK 2** (`model5.yml`)  
- RadioMaster **R86C** · MULTI · **FrSky X / LBT** · 6ch · Custom failsafe  
- Gyro: rudder-only lead (no remote gain wire) → **CH5 unused**  
- Pack: **3S** fly  

## Switches

| Switch | Role |
|--------|------|
| SF | Throttle hold (override CH1 = −100) |
| SE | Normal / Idle1 / Idle2 |
| SA | Unused (no gyro gain lead) |
| SB | Lights |
| SC | Rates Low / Med / High |
| SD | Timer |

## Critical mix rules

- Coll. pitch source = **PIT** (curves on that input)  
- CH6 = **CYC3**  
- THRO = thr curves per FM  
- Cyclic calm = **SC** rates + expo (not pitch curves)  
- No CH5 / Gain mix (gyro gain on the unit)  

## Heli / swash

| Field | Value |
|-------|--------|
| Swash | 120° |
| Coll. weight | 60% |
| Ail / Ele weight | 60% / 60% (signs as tuned for correct tilt) |

## Curves (5-point Y from `model5.yml`)

```
Normal  CTH: -100, -90, -10, 40, 70
Normal  CPI: -25, 10, 40, 55, 65
Idle1   CT1: 65, 70, 75, 75, 75
Idle1   CP1: -55, -30, 0, 35, 60
Idle2   CT2: 75, 85, 85, 85, 85
Idle2   CP2: -65, -35, 0, 40, 70
```

Normal CPI mid **40** = hover near mid stick. Idle pitch mid **0** = geometry / 0° reference.

## Dual rates (**SC**)

| | Ail/Ele weight | Expo | Rud weight | Expo |
|--|----------------|------|------------|------|
| Low | 55% | 40% | 60% | 35% |
| Med | 70% | 30% | 75% | 25% |
| High | 100% | 25% | 90% | 20% |

## RF

MULTI · FrSky X · LBT · 6ch · failsafe **Custom** · optionValue **14** (freq fine-tune)

## Restore

[RESTORE.md](RESTORE.md) · [`../SD Card Files/`](../SD%20Card%20Files/)
