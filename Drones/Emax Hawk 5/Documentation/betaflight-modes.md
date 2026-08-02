# Betaflight modes (match this radio pack)

Your dump had Angle almost always on, Arm on AUX2, Beeper on AUX3. The TX16S pack uses a **heli-like** layout, so update BF once.

**Props off. Battery unplugged while on USB is fine.**

In CLI (Configurator 10.10 is OK for this):

```text
aux reset
aux 0 0 1 1700 2100
aux 1 1 0 900 1300
aux 2 2 0 1700 2100
aux 3 13 2 1700 2100
save
```

| Line | Meaning |
|------|---------|
| `aux 0 0 1 …` | **ARM** on **AUX2** (CH6) high — **SF1** armed / **SF0** disarmed |
| `aux 1 1 0 900 1300` | **ANGLE** on **AUX1** (CH5) low — **SE** Level |
| `aux 2 2 0 1700 2100` | **HORIZON** on **AUX1** high — **SE** Horizon |
| Mid AUX1 | neither → **Acro** (**SE** centre) |
| `aux 3 13 2 …` | **BEEPER** on **AUX3** (CH7) — **SH** held |

## How Level / Acro / Horizon works

Nothing heli-like on the radio — **SE** is mixed straight to **CH5**. Betaflight reads that AUX:

| SE | CH5 | BF (after AUX CLI) |
|----|-----|---------------------|
| Low | ~1000 | **ANGLE** (Level) |
| Mid | ~1500 | neither → **Acro** |
| High | ~2000 | **HORIZON** |

Until you paste the CLI in this file, SE won’t change flight modes in BF.

## Level intensity

Already on **SA → CH8**. It only *changes feel* if you later add a BF **adjrange** on Angle; the radio already sends the channel. **SG** is left free.


## Keep

- `map AETR1234`
- `feature RX_PPM` (unless you rewire the RX to SBUS and switch to `RX_SERIAL`)

## Backup first

You already have a `diff all` — keep that file before changing AUX.

## Related

- [Switch map](switch-map.md)
- [← Model home](README.md)
