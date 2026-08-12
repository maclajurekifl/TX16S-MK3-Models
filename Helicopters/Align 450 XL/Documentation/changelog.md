# Changelog — Align 450 XL

## 2026-08-12 (emergency restore)

- SD `model2.yml` was truncated/missing → EdgeTX **emergency mode**.
- Restored full known-good model from git `e690537` (RF, mixes, inputs, widgets).
- Independent-servo experiment **reverted** until the radio loads cleanly again.

## 2026-08-07

- Clarified tune intent: **dual rates = Align 450 SE V2**; **heli swash weights = 100/100/100** (not the SE V2 ±60).
- Images: radio/widget bitmap `Align450XL.png` (192×114); GitHub hero `assets/Align450XL.png` (256×192).
- Initial pack **model2**: CCPM heli programming from Align SE V2 structure.
- RF adapted for RadioMaster **R86C** — MULTI **FrSky X / LBT** (`subType: 15,2`), Custom failsafe (same family as HBK2).
- Thr & pitch curves set to **generic defaults** (not SE V2 flight-tuned values) for on-heli tuning.
- Docs: R86C wiring + bind/failsafe; XL hybrid airframe notes.
