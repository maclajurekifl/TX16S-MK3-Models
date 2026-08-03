# D8R-II Plus wiring

FrSky **D8R-II Plus** (PWM CH1–8) for this Titan CCPM setup. Channel order matches the Align / Titan EdgeTX mixes.

## Ports

| D8R channel | Function | Notes |
|-------------|----------|--------|
| **CH1** | ESC / motor | Thr curves · **SF** hold → −100 |
| **CH2** | Left swash servo | CYC (aileron share) |
| **CH3** | Front swash servo | CYC (elevator share) |
| **CH4** | Tail gyro (rudder **in**) | Tail **servo** plugs into the **gyro** |
| **CH5** | Gyro gain | **SA** |
| **CH6** | Right swash servo | **CYC3** — keep |
| CH7–CH8 | Unused | Leave empty |

Face the heli from behind (nose away): **left → CH2**, **front → CH3**, **right → CH6**.

## Side pins (telemetry)

| Jumper | Meaning |
|--------|---------|
| **A1–X** | Internal RX battery voltage on A1 (OK to leave on) |
| G–Tx or others | Do **not** short for bind |

Bind uses the **F/S** button, not a side jumper.

## CCPM reminder

```
PIT input (curved) ──┐
Ail / Ele ───────────┼──→ Heli mixer → CYC1 / CYC2 / CYC3 → CH3 / CH2 / CH6
```

## Related

- [RF bind & failsafe](rf-bind-failsafe.md)
- [← Model home](README.md)
