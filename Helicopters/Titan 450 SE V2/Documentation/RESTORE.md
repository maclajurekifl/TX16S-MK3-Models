# Titan 450 SE V2 — restore onto TX16S SD

## Drop files

1. Open: `Helicopters/Titan 450 SE V2/SD Card Files/`
2. Copy **everything inside** to the SD root (e.g. `F:\`):
   - `MODELS\`
   - `IMAGES\`
   - `SCRIPTS\`
3. Merge when Windows asks.

## Model slot

This pack uses **`MODELS/model1.yml`** (slot **1**).

- Radio name: **Titan 450 SE V2**
- Bitmap: **Titan450.png**
- If slot 1 is taken, rename and update `labels.yml` (see `MODELS/README-LABELS.txt`).

## Included

| Path | Why |
|------|-----|
| `MODELS/model1.yml` | Full heli model · FrSky D8 RF |
| `IMAGES/Titan450.png` | Model select bitmap |
| `SCRIPTS/RGBLED/ (srain, sapp, off) ` | SB lights |

## After copy

1. Eject SD · power on · select **Titan 450 SE V2**
2. Confirm External RF: **MULTI · FrSky D · D8**
3. Bind the **D8R-II Plus** ([rf-bind-failsafe.md](rf-bind-failsafe.md))
4. **RF freq fine-tune** (required for FrSky D)
5. Wire CH1–6 ([d8r-ii-plus-wiring.md](d8r-ii-plus-wiring.md)) · motor unplugged first

## Related

- [← Model home](README.md)
- [Setup](SETUP.md)
