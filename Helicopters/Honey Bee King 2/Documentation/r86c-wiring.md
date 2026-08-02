# R86C wiring

RadioMaster **R86C** (6ch PWM) with this CCPM setup. Channel order is **AETR** as in `model5.yml`.

## Ports

| R86C | Function | TX / mix notes |
|------|----------|----------------|
| **CH1** | ESC / motor | Thr curves `CTH`/`CT1`/`CT2` · **SF** hold → −100 |
| **CH2** | Left swash servo | **CYC2** (aileron share) |
| **CH3** | Front swash servo | **CYC1** (elevator share) |
| **CH4** | Tail gyro (rudder in) | Rud channel · tail **servo** plugs into the **gyro** |
| **CH5** | *(empty)* | This gyro has no remote gain wire |
| **CH6** | Right swash servo | **CYC3** — keep |

Face the heli from behind (nose away): **left → CH2**, **front → CH3**, **right → CH6**. Swap among CH2/3/6 only if CCPM directions are wrong after reverses/swash signs are set.

## CCPM reminder

```
PIT input (curved) ──┐
Ail / Ele ───────────┼──→ Heli mixer → CYC1 / CYC2 / CYC3 → CH3 / CH2 / CH6
```

CH6 is a **servo output**, not the collective curve slot.

## Gyro note

Rudder-only gyro (one 3-wire to RX, one 3-wire to tail servo): gain / HH vs rate are set **on the gyro**, not with **SA**.

## Related

- [RF, bind & failsafe](rf-bind-failsafe.md)
- [Swashplate levelling](swashplate-leveling.md)
- [← Model home](README.md)
