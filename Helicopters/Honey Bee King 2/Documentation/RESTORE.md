# Honey Bee King 2 — restore onto TX16S SD

## Drop files

1. Open: `Helicopters/Honey Bee King 2/SD Card Files/`
2. Copy **everything inside** that folder to the SD card root (e.g. `F:\`):
   - `MODELS\`
   - `IMAGES\`
   - `SCRIPTS\`
   - `WIDGETS\`
3. Merge when Windows asks (do not replace the whole `SCRIPTS` or `WIDGETS` tree if you have other models’ assets — merging is fine).

## Model slot

This backup uses **`MODELS/model5.yml`** (slot 5 on this radio).

- Radio name: **Esky HBK 2** · bitmap `HBK2.png`
- If slot 5 is already another model on a different SD, rename to the next free `modelN.yml` and add a matching entry in `MODELS/labels.yml` (see `SD Card Files/MODELS/README-LABELS.txt`).

## Included assets (why)

| Path | Why |
|------|-----|
| `MODELS/model5.yml` | Full model (heli CCPM, mixes, screens, SF) |
| `IMAGES/HBK2.png` | Model bitmap |
| `SCRIPTS/RGBLED/blue`, `sapp`, `off` | SB light special functions |
| `WIDGETS/GaugeRotary/` | Used on model telemetry screen |

Built-in widgets (Gauge, Timer, Outputs, Text, Value, ModelBmp, Radio Info, Date Time) ship with EdgeTX — not duplicated here.

## After copy

1. Eject SD / unplug USB storage mode.
2. Power on TX16S → select **Esky HBK 2**.
3. Confirm image, SB lights, and screens load.
4. Confirm Internal RF still binds the **R86C** (FrSky X / LBT) and **RF freq. fine tune** is set.

## Related

- [← Model home](README.md)
- [Setup summary](SETUP.md)
