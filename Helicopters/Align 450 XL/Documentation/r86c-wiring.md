# R86C wiring — Align 450 XL

RadioMaster **R86C** (6ch PWM) with this CCPM setup. Same port idea as the SE V2 / HBK2 packs.

## Ports

| R86C | Function | TX / mix notes |
|------|----------|----------------|
| **CH1** | ESC / motor | Thr curves · **SF** hold → −100 |
| **CH2** | Left swash servo | CYC (aileron share) |
| **CH3** | Front swash servo | CYC (elevator share) |
| **CH4** | Tail gyro (rudder **in**) | Tail **servo** plugs into the **gyro** |
| **CH5** | Gyro gain (optional) | **SA** — leave empty if no gain lead |
| **CH6** | Right swash servo | **CYC3** — keep |

Face the heli from behind (nose away): **left → CH2**, **front → CH3**, **right → CH6**.

## CCPM reminder

```
PIT input (curved) ──┐
Ail / Ele ───────────┼──→ Heli mixer → CYC1 / CYC2 / CYC3 → CH3 / CH2 / CH6
```

## Related

- [RF bind & failsafe](rf-bind-failsafe.md)
- [← Model home](README.md)
