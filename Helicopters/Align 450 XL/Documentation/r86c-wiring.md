# R86C wiring — Align 450 XL

RadioMaster **R86C** (6ch PWM). This airframe uses **independent** servos (not CCPM mix).

## Ports

| R86C | Output name | Function | TX / mix |
|------|-------------|----------|----------|
| **CH1** | Motor | ESC | Thr curves · **SF** hold → −100 |
| **CH2** | Roll | Roll servo | Aileron only |
| **CH3** | Elevate | Collective / height | Pit curves only |
| **CH4** | Rud | Tail gyro in | Tail **servo** on the **gyro** |
| **CH5** | Gain | Gyro gain (optional) | **SA** |
| **CH6** | Pitch | Fore/aft servo | Elevator only |

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
