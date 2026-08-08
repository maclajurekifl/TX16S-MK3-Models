# Changelog — Simulator

## 2026-08-08

- Expand to **80** effects; fix flicker via phase-based timing.
- Remap: **S1** = brightness · **S2** = reverse / freeze / forward · **btn 1/2** (`SW1`/`SW2` Toggle) = prev/next effect via always-on `fxnav` Lua → **GV1**.
- Main screen shows control help (SB / Btn1–2 / S1 / S2) and **LedFx** widget with current effect name.
- **SB Up** = StaticRain (`srain`) instead of off.

## 2026-08-08 (earlier)

- Add animated RGB effects in `ledfx.lua`; Simulator **SB** Mid/Down runs them (Repeat ON); SB Up = off.

## 2026-08-07

- Initial pack **model7**: full-range sticks, RF off, **SB** RGB LED scripts, `Sim.png` bitmap.
