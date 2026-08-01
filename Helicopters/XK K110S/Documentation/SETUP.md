# XK K110S — setup summary

Compact cheat sheet. Full narrative lives in the [model home](README.md) and linked guides.

## Hardware

- XK K110S · FBL (board mixes CCPM) · S-FHSS  
- TX16S MK3 · EdgeTX · 4-in-1 MULTI  
- Radio must **not** do 90°/120° swash — type **`---`**

## Switches

| Switch | Role |
|--------|------|
| SF | Throttle hold (override CH3 = −100) |
| SE | Normal / Zero / Idle-Up |
| SA | 6G / 3D (CH5) |
| SB | Lights blue / red / off |
| SC | Rates High / High / Low |
| SD | Flight timer |

## Channels (1-based)

| CH | Function | Notes from `model4.yml` |
|----|----------|-------------------------|
| 1 | Aileron | Reversed · limits ≈ ±70% |
| 2 | Elevator | Limits ≈ ±70% |
| 3 | Throttle | Curves CTN / CTI · hold = −100 |
| 4 | Rudder | Reversed · limits ≈ ±80% |
| 5 | 6G / 3D | Source **SA** · limit name `3D` |
| 6 | Collective | Curves CPN / CPI · source Thr stick |

## Critical radio rules

- Swash type **`---`** · Long/Lat/Coll sources Ele/Ail/Thr @ 100% · swash ring **0**  
- Idle-Up thr/pitch gated by **SE2** (REPL mixes), not CCPM  
- Prefer **ail/ele trim & subtrim = 0** at plug-in; fix drift with links + [calibration](calibration.md)

## Curves (from `model4.yml` point dump)

```
CTN (Normal thr):   -100, -36, 30, 30, 30
CTI (Idle-Up thr):  -50, 0, 50, 50, 50
CPN (Normal pitch): -20, -10, 0, 30, 60
CPI (Idle-Up pitch):-60, -30, 0, 30, 60
```

## RF

MULTI · Futaba · SFHSS · optionValue **38** · failsafe **HOLD**

## Restore

[RESTORE.md](RESTORE.md) · [`../SD Card Files/`](../SD%20Card%20Files/)
