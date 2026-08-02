# Align 450 SE V2 — restore onto TX16S SD

## Drop files

1. Open: `Helicopters/Align 450 SE V2/SD Card Files/`
2. Copy **everything inside** that folder to the SD card root (e.g. `F:\`):
   - `MODELS\`
   - `IMAGES\`
   - `SCRIPTS\`
3. Merge when Windows asks (do not replace the whole `SCRIPTS` tree if you have other models’ assets — merging is fine).

## Model slot

This backup uses **`MODELS/model3.yml`** (slot 3 on this radio).

- If slot 3 is already another model on a different SD, rename to the next free `modelN.yml` and add a matching entry in `MODELS/labels.yml` (see `SD Card Files/MODELS/README-LABELS.txt`).
- On **this** TX16S backup, slot 3 is **Align 450 SE V2** with bitmap `Align450.png`.

## Included assets (why)

| Path | Why |
|------|-----|
| `MODELS/model3.yml` | Full model (heli CCPM, mixes, screens, SF) |
| `IMAGES/Align450.png` | Model bitmap |
| `SCRIPTS/RGBLED/blue`, `sapp`, `off` | SB light special functions |

Built-in widgets (Gauge, Timer, Outputs, Text, Value, ModelBmp, Radio Info, Date Time) ship with EdgeTX — not duplicated here. This model no longer uses the custom **GaugeRotary** widget.

## After copy

1. Eject SD / unplug USB storage mode.
2. Power on TX16S → select **Align 450 SE V2**.
3. Confirm image, SB lights, and screens load.

## Related

- [← Model home](README.md)
- [Setup summary](SETUP.md)
