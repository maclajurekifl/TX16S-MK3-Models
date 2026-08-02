# Changelog — Emax Hawk 5

## 2026-08-02 (night)

- Radio bitmap from Hawk5out (192�114); GitHub hero black bg removed (transparent).

- Doc hero `assets/Hawk5.png` (256×192, same as heli READMEs) and radio bitmap `IMAGES/Hawk5.png` (192×114).
- Fix Layout2x4 switch pages: labels in left column, values in right (was interleaved so SA/SB vs SC/SD looked swapped).

## 2026-08-02 (evening)

- Switch rule: **Up = safer / more level**, Down = more 3D. SE → Level / Horizon / Acro. SC already Low/Mid/High rates Up→Down.
- SF arm: **SF0 Up = CH6 −100 + thr cut**, **SF2 Down = CH6 +100** (2POS Down is SF2, not SF1 — SF1 left CH6 mid so motors never armed).
- Widget labels all Up/Mid/Down order; BF AUX CLI updated for Angle-high / Horizon-mid.

## 2026-08-02

- Widget screens redesign: flight sticks page; two switch pages (label+positions | live value); telemetry/info page; clean top bar.
- Rebuilt as multirotor (AERO-style mixes); External AFHDS 2A; heli switch habits.
