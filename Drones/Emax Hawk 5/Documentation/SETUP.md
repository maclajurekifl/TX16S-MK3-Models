# Emax Hawk 5 — setup summary

Multirotor model aligned with **AERO** (`model1` on your SD): airplane type, direct switch mixes, Outputs screens. Not a heli clone.

**Rule:** switch **Up** = safer / more level · **Down** = more 3D / rates. Labels are always Up/Mid/Down.

## Hardware / RF

- Hawk 5 · BF 3.2.2 · PPM into FC  
- **External** Multi · AFHDS 2A · PPM_IBUS · 10 ch  
- Internal ELRS unused  

## Inputs / mixes

| CH | Mix source | Name |
|----|------------|------|
| 1–4 | Roll/Pitch/Thr/Yaw inputs | AETR sticks |
| 5 | **SE** | Mode (Lvl / Horiz / Acro) |
| 6 | **SF0** −100 / **SF2** +100 | Arm (Up=SAFE, Down=ARMED) |
| 7 | **SH** | Beep |
| 8 | **SA** | LvlInt (Hi / Mid / Lo) |
| 9 | **SB** | LED |
| 10 | **SW1** | Turtle |

SC rates (**Up→Down**): **Evol** 100%/expo 0 (Turnigy Evolution feel) · old Low · old Mid. Former High removed. SF0 also overrides thr to −100.

## Model type

- No swash / no `limitData` overrides (defaults ±100%)  
- `modelHeliDisabled: ON` · Internal `TYPE_NONE`  

## BF

[betaflight-modes.md](betaflight-modes.md) — paste the AUX CLI (Level on SE Up).

## Restore

Copy **`MODELS/model6.yml`** only onto the SD (replace previous Hawk file).
