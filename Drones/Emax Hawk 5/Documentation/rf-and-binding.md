# RF and binding

## Protocol

| Setting | Value |
|---------|--------|
| Module | Internal **MULTI** |
| Type | **FlySky** / **AFHDS 2A** (`FlSky 2A`) |
| Sub-type | **PPM + IBUS** (yaml `28,1`) — matches FC `RX_PPM` |
| Channels | **1–10** |
| Receiver number | Use a **unique** number (do not reuse another AFHDS 2A model’s) |
| Failsafe | **Custom** — thr low, arm low |

If bind fails, try the other PPM subtype (**PPM_SBUS**) or PWM variants once, then put the RX back to whatever output the Omnibus PPM pad expects.

## Bind (typical FlySky RX)

1. Props off.
2. TX16S → model **Emax Hawk 5** → Model setup → Internal RF → **Bind**.
3. Power the RX / quad into bind (button or bind plug — depends on the RX under the top plate).
4. Wait for solid LED → exit bind → power cycle.

## After bind

1. Apply [betaflight-modes.md](betaflight-modes.md).
2. Props off, battery on: confirm CH1–4 move in an old Configurator Receiver tab **or** watch motors disarmed + mode changes in OSD.
3. Range / failsafe check before flying.

## Telemetry

AFHDS 2A can provide RX telemetry if the RX supports it and firmware is recent enough. Main screen still shows stick gauges + timer like the heli packs; RSSI appears when the sensor shows up.

## Related

- [RESTORE.md](RESTORE.md)
- [← Model home](README.md)
