# Emax Hawk 5 — restore onto TX16S SD

## Drop files

1. Open: `Drones/Emax Hawk 5/SD Card Files/`
2. Copy **everything inside** that folder to the SD card root (e.g. `F:\`):
   - `MODELS\`
   - `IMAGES\`
   - `SCRIPTS\`
   - `WIDGETS\`
3. Merge when Windows asks.

## Model slot

This pack uses **`MODELS/model6.yml`** (slot **6** — after HBK2 `model5`).

- Radio name: **Emax Hawk 5**
- If slot 6 is taken, rename and update `labels.yml` (see `MODELS/README-LABELS.txt`).

## Included assets

| Path | Why |
|------|-----|
| `MODELS/model6.yml` | Full model (AETR, AUX, rates, screens, SF) |
| `IMAGES/Hawk5.png` | Model select bitmap (192×114) |
| `SCRIPTS/RGBLED/blue`, `sapp`, `off` | SB TX light scripts (same as helis) |
| `WIDGETS/GaugeRotary/` | Throttle rotary gauge on main screen |

## After copy

1. Eject SD / leave USB storage.
2. Power on → select **Emax Hawk 5**.
3. Confirm screens + SB lights.
4. Confirm model is **not** showing Heli setup (airplane/multirotor). Inputs = Roll/Pitch/Thr/Yaw; outputs ±100%.
5. Bind on **External RF** AFHDS 2A (see [rf-and-binding.md](rf-and-binding.md)).
6. Update Betaflight AUX (see [betaflight-modes.md](betaflight-modes.md)).
7. Props off → verify arm / modes / beeper on the bench.

**Replace** the old `model6.yml` on the SD if you already copied the heli-based version.

## Related

- [← Model home](README.md)
- [Setup summary](SETUP.md)
