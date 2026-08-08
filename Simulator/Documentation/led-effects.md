# LED effects (Simulator)

80 animated RGB sequences in `SCRIPTS/RGBLED/ledfx.lua`.

## Controls

| Control | Action |
|---------|--------|
| **SB Up** | **StaticRain** (`srain`) — static rainbow |
| **SB Mid / Down** | Run animated pack (`ledfx`, Repeat ON) |
| **Btn 1** (`SW1` / **Prv**) | Previous effect (via `fxnav` → GV1) |
| **Btn 2** (`SW2` / **Nxt**) | Next effect (via `fxnav` → GV1) |
| **S1** | **Brightness** (dark → bright) |
| **S2** | **Speed**: CCW = reverse · mid = **freeze** · CW = forward |

Main screen **LedFx** widget shows `FX ##  Name` for the active effect.

## Effect groups

| # | Style |
|---|--------|
| 0–9 | Rainbow / wash / split hue |
| 10–19 | Pulse / breathe / heartbeat |
| 20–29 | Police, strobe, thunder, alerts |
| 30–39 | Fire, ice, ocean, aurora, candle, Xmas |
| 40–49 | Cylon, comet, theater, spinner, fill |
| 50–59 | Sparkle, twinkle, glitter |
| 60–69 | Halves, RGB cycle, crossfade, checker |
| 70–79 | Stick-reactive (thr/ail/ele/rud) + extras |

## Notes

- Timing uses a **phase accumulator** so changing S2 does not jump/flicker.
- Mid S2 freezes the current frame (useful for picking a colour).
- Effect index resets when LEDs are turned off (SB Up) and back on.

## Related

- [Switch map](switch-map.md)
- [← Model home](README.md)
