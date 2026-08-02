# Betaflight modes (match this radio pack)

Your dump had Angle almost always on, Arm on AUX2, Beeper on AUX3. The TX16S pack uses a **heli-like** layout with **Up = safer**, so update BF once.

**Props off. Battery unplugged while on USB is fine.**

In CLI (Configurator 10.10 is OK for this):

```text
aux reset
aux 0 0 1 1700 2100
aux 1 1 0 1700 2100
aux 2 2 0 1300 1700
aux 3 13 2 1700 2100
save
```

| Line | Meaning |
|------|---------|
| `aux 0 0 1 …` | **ARM** on **AUX2** (CH6) high — **SF Down (SF1)** armed / **SF Up (SF0)** disarmed |
| `aux 1 1 0 1700 2100` | **ANGLE** on **AUX1** (CH5) high — **SE Up** Level |
| `aux 2 2 0 1300 1700` | **HORIZON** on **AUX1** mid — **SE Mid** Horizon |
| Low AUX1 | neither → **Acro** (**SE Down**) |
| `aux 3 13 2 …` | **BEEPER** on **AUX3** (CH7) — **SH** held Down |

## How Level / Horizon / Acro works

**SE** is mixed straight to **CH5**. Betaflight reads that AUX:

| SE | CH5 | BF (after AUX CLI) |
|----|-----|---------------------|
| **Up** | ~2000 | **ANGLE** (Level) |
| **Mid** | ~1500 | **HORIZON** |
| **Down** | ~1000 | neither → **Acro** |

Until you paste the CLI in this file, SE won’t change flight modes in BF.

Radio arm uses two mixes: **SF0 (Up)** → CH6 **−100** (disarm) + thr override; **SF1 (Down)** → CH6 **+100** (arm), thr stick live.

## Level intensity

**SA → CH8**: Up = high / Down = low. Only changes feel if you later add a BF **adjrange** on Angle. **SG** is left free.

## Keep

- `map AETR1234`
- `feature RX_PPM` (unless you rewire the RX to SBUS and switch to `RX_SERIAL`)

## Backup first

You already have a `diff all` — keep that file before changing AUX.

## Related

- [Switch map](switch-map.md)
- [← Model home](README.md)
