# XK K110S — restore onto TX16S SD

## Drop files

1. Open: `Helicopters/XK K110S/SD Card Files/`
2. Copy **everything inside** that folder to the SD card root (e.g. `F:\`):
   - `MODELS\`
   - `IMAGES\`
   - `SCRIPTS\`
3. Merge when Windows asks (do not replace the whole `SCRIPTS` tree if you have other models’ assets — merging is fine).

## Model slot

This backup uses **`MODELS/model4.yml`** (slot 4 on this radio).

- If slot 4 is already another model on a different SD, rename to the next free `modelN.yml` and add a matching entry in `MODELS/labels.yml` (see `SD Card Files/MODELS/README-LABELS.txt`).
- On **this** TX16S backup, slot 4 is **XK 110s** with bitmap `XK110.png`.

## Included assets (why)

| Path | Why |
|------|-----|
| `MODELS/model4.yml` | Full model (heli `---`, mixes, curves, screens, SF) |
| `IMAGES/XK110.png` | Model bitmap |
| `SCRIPTS/RGBLED/blue`, `red`, `off` | SB light special functions |

Built-in widgets (Gauge, Timer, Outputs, Text, Value, ModelBmp, …) ship with EdgeTX — not duplicated here. This model no longer uses the custom **GaugeRotary** widget.

## After copy

1. Eject SD / unplug USB storage mode.
2. Power on TX16S → select **XK 110s**.
3. Confirm image, SB lights, CH5 moves with **SA**, and screens load.
4. Confirm Internal RF is **MULTI → Futaba → SFHSS** and fine-tune ≈ **+38**.

## Related

- [← Model home](README.md)
- [Setup summary](SETUP.md)
- [RF & binding](rf-and-binding.md)
