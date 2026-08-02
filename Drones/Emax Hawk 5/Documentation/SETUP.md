# Emax Hawk 5 — setup summary

Values match `model6.yml`. Full narrative: [model home](README.md).

## Hardware

- Emax Hawk 5 · Quad X · BF **3.2.2** Omnibus F4  
- TX16S MK3 · model **Emax Hawk 5** (`model6.yml`)  
- RX: FlySky **AFHDS 2A** → FC **PPM** (as in your dump)  
- Goggles: Eachine EV100 (video only — not in this pack)

## Switches (heli-aligned)

| Switch | Role |
|--------|------|
| **SA** | Level intensity (CH8 / AUX4) — wire in BF when ready |
| **SB** | TX RGB lights + CH9 LED AUX |
| **SC** | Dual rates Low / Mid / High (radio-side) |
| **SD** | Flight timer |
| **SE** | Level / Acro / Horizon → CH5 |
| **SF** | Arm / hold — **SF0** safe (disarm + thr cut) · **SF1** armed |
| **SG** | Beeper (SG↑ high) → CH7 |
| **SW1** | Turtle AUX (CH10) — needs newer BF to use |

## Channels

| CH | Name | Source |
|----|------|--------|
| 1–4 | AETR | Sticks |
| 5 | Mode | SE (−100 Level / 0 Acro / +100 Horizon) |
| 6 | Arm | SF0 disarmed / SF1 armed (+ thr cut on SF0) |
| 7 | Beeper | SG |
| 8 | LvlInt | SA |
| 9 | LED | SB |
| 10 | Turtle | SW1 |

## RF

MULTI · FlySky AFHDS 2A · **PPM_IBUS** · 10 ch · failsafe **Custom** (thr + arm low)

## Must do on the quad

Paste [betaflight-modes.md](betaflight-modes.md) CLI so AUX matches this map.

## Restore

[RESTORE.md](RESTORE.md) · [`../SD Card Files/`](../SD%20Card%20Files/)
