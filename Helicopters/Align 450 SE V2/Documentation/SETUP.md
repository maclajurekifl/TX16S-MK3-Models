# Align 450 SE V2 — setup notes

Flybar Align 450 SE V2 on Radiomaster TX16S MK3 (EdgeTX), Spektrum **AR6200**, DSM bind.

## Receiver map (AR6200)

| Port | Function |
|------|----------|
| THRO | ESC |
| AILE | Swash servo (CYC) |
| ELEV | Swash servo (CYC) |
| RUDD | Tail gyro |
| GEAR | Gyro gain |
| AUX1 | Third swash servo — mixer source **CYC3** |

## Switches (this radio)

| Switch | Function |
|--------|----------|
| **SF** | Throttle hold (CH1 override safe) |
| **SE** | Flight mode: Normal / Idle1 / Idle2 |
| **SA** | Gyro gain |
| **SB** | RGB lights (`blue` / `sapp` / `off`) |
| **SC** | Dual rates Low / Med / High |
| **SD** | Flight timer |

## Critical CCPM notes

- **Heli → Coll. pitch source** = **PIT** (Inputs).
- Pitch curves live on **Inputs → PIT** (`CPI` / `CP1` / `CP2`), not on Flight Modes page.
- **AUX1** mixer source stays **CYC3** — never replace with Thr.
- Throttle curves live on **Mixers → THRO** (`CTH` / `CT1` / `CT2`) gated by flight mode.

## Dual rates (SC) — cyclic calm

Aileron / Elevator:

| Rates | Weight | Expo |
|-------|--------|------|
| Low | 55% | 40% |
| Med | 75% | 30% |
| High | 100% | 25% |

Rudder: 65%/35% · 80%/25% · 100%/20%

## Curves (starting targets)

```
Normal  CTH: -100,-100 | -50,-90 | 0,-10 | 50,45 | 100,80
Normal  CPI: -100,-35  | -50,15  | 0,40  | 50,55 | 100,70
Idle1   CT1: -100,70   | -50,75  | 0,80  | 50,80 | 100,80
Idle1   CP1: -100,-75  | -50,-40 | 0,0   | 50,40 | 100,75
Idle2   CT2: -100,80   | -50,85  | 0,90  | 50,90 | 100,90
Idle2   CP2: -100,-90  | -50,-50 | 0,0   | 50,50 | 100,90
```

Verify live values in the radio / `model3.yml` after edits — this doc is the intended setup guide.

## Pack / voltage

- Normal flight: **3S (11.1 V)**
- Bench / gentle tune only: 2S OK; retune gains on 3S

## What fixes what

| Feel | Adjust |
|------|--------|
| Twitchy fore/aft / left/right | SC dual rates + expo |
| Normal vs Idle head speed / collective | CTH/CT*/CPI/CP* curves |
| Hard yaw spin on liftoff | Gyro **sense** (not gain chasing) |
