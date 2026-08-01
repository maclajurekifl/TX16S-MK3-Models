# AR6200 wiring

Spektrum **AR6200** (6 channel) used with this Align 450 CCPM setup.

## Ports

| AR6200 port | Function | TX / mix notes |
|-------------|----------|----------------|
| **THRO** | ESC / motor | Thr curves `CTH`/`CT1`/`CT2` |
| **AILE** | Swash servo | CYC (e.g. CYC1) |
| **ELEV** | Swash servo | CYC (e.g. CYC2) |
| **RUDD** | Tail gyro (rudder in) | Rud channel |
| **GEAR** | Gyro gain | **SA** |
| **AUX1** | Third swash servo | **CYC3** — keep |

That fills all six channels: thr + 3× swash + rudder + gain.

## CCPM reminder

```
PIT input (curved) ──┐
Ail / Ele ───────────┼──→ Heli mixer → CYC1 / CYC2 / CYC3 → AILE / ELEV / AUX1
```

AUX1 is a **servo output**, not the collective curve slot.

## Related

- [EdgeTX programming](edgetx-programming.md)
- [← Model home](README.md)
