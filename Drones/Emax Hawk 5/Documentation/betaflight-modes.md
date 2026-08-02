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
| `aux 3 13 2 …` | **BEEPER** on **AUX3** (CH7) — **SG** high |

## Optional later

- **SA → CH8 / AUX4:** adjrange for Angle strength (not required to fly).
- **SB → CH9:** LED strip / mode if you enable LED_STRIP.
- **SW1 → CH10:** turtle / flip-over needs a **newer** Betaflight than 3.2.2.

## Keep

- `map AETR1234`
- `feature RX_PPM` (unless you rewire the RX to SBUS and switch to `RX_SERIAL`)

## Backup first

You already have a `diff all` — keep that file before changing AUX.

## Related

- [Switch map](switch-map.md)
- [← Model home](README.md)
