# Changelog — Emax Hawk 5

## 2026-08-08

- **SC rates** remapped to match Turnigy Evolution stick feel on **Up**: Ail/Ele/Rud **100% / expo 0**. Mid = former Low; Down = former Mid. Old High (100% + expo) removed.

## 2026-08-05

- Restored the Hawk's own screens: the 2026-08-02 SD sync had overwritten `screenData`, `topbarData` and the **SW1** custom switch with **XK K110S** content, so the model showed XK labels (`SA - 6G/3D`, `SE - Normal/Zero/Idle-Up`, top bar `XK 110S`) under the Hawk name and bitmap.
- Mixes, inputs, curves and RF were never affected — only the screen/widget layer and `SW1` (back to `Tur`, ungrouped, `START_OFF`).
- Fixed doc encoding in this changelog (mojibake from a non-UTF-8 write).

## 2026-08-02 (night)

- Top bar: add ModelBmp widget (from radio edit).
- Radio bitmap from Hawk5out (192×114); GitHub hero black bg removed (transparent).
- Doc hero `assets/Hawk5.png` (256×192, same as heli READMEs) and radio bitmap `IMAGES/Hawk5.png` (192×114).
- Fix Layout2x4 switch pages: labels in left column, values in right (was interleaved so SA/SB vs SC/SD looked swapped).

## 2026-08-02 (evening)

- Switch rule: **Up = safer / more level**, Down = more 3D. SE → Level / Horizon / Acro. SC already Low/Mid/High rates Up→Down.
- SF arm: **SF0 Up = CH6 −100 + thr cut**, **SF2 Down = CH6 +100** (2POS Down is SF2, not SF1 — SF1 left CH6 mid so motors never armed).
- Widget labels all Up/Mid/Down order; BF AUX CLI updated for Angle-high / Horizon-mid.

## 2026-08-02

- Widget screens redesign: flight sticks page; two switch pages (label+positions | live value); telemetry/info page; clean top bar.
- Rebuilt as multirotor (AERO-style mixes); External AFHDS 2A; heli switch habits.
