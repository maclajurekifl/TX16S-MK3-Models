# Changelog — Titan 450 SE V2

## 2026-08-04

- Softened Normal **CTH** (motor came on hard): mid-high `50,45→28`, top `100,80→62`. CPI unchanged.
- Softened **Rud** dual rates (tail servo saturated early): Low/Mid/High `65/80/100` → `40/50/60`.
- Preserved radio tune-ups in `model1.yml`: RF fine-tune **+4**, aileronWeight **+60** (servo directions as set on TX).

## 2026-08-03

- Initial pack: copy of Align 450 SE V2 radio programming as **model1**.
- RF changed from Spektrum to **FrSky D / D8** for **D8R-II Plus** (`subType: 3,0`, fine-tune option, no Multi autobind).
- Docs: D8R wiring + bind/failsafe (Align AR6200 wiring not used).
