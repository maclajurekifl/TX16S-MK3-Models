# R86C wiring — Align 450 XL

RadioMaster **R86C** (6ch PWM). This airframe uses **independent** servos (not CCPM mix).

## Ports

| R86C | Function | TX / mix |
|------|----------|----------|
| **CH1** | ESC / motor | Thr curves · **SF** hold → −100 |
| **CH2** | **Roll** servo | Aileron only |
| **CH3** | **Elevate / collective** servo | Pit input (pitch curves) only |
| **CH4** | Tail gyro (rudder **in**) | Tail **servo** plugs into the **gyro** |
| **CH5** | Gyro gain (optional) | **SA** |
| **CH6** | **Pitch** (fore/aft) servo | Elevator only |

## Signal path

```
Ail  → CH2  (roll)
Ele  → CH6  (pitch)
Pit  → CH3  (elevate / collective)
Thr  → CH1  (motor)
```

No CYC / 120° swash mixer.

## Related

- [RF bind & failsafe](rf-bind-failsafe.md)
- [← Model home](README.md)
