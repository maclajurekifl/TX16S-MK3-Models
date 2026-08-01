# Heli / swash settings & channel map

## Critical rule

The K110S **FBL board mixes the swash**. The physical head is a **120°** triangle, but the **radio must not run CCPM**.

| Radio swash type | Use? |
|------------------|------|
| **`---`** (this model) | **Yes** |
| 90° / 120° / 120X / 140 | **No** — double-mixes and fights the board |

## Sources (this backup)

Long / lateral / collective feed from sticks at **100%**; **swash ring 0** (limiter off). Collective pitch is driven from the **Thr** stick into **CH6** via pitch curves (not a separate PIT input on this model).

## Channel map (1-based)

| CH | Name in yml | Source | Notes |
|----|-------------|--------|-------|
| 1 | Ail | I0 | **Reversed** · ≈ ±70% limits |
| 2 | Ele | I1 | ≈ ±70% limits |
| 3 | Thr | I2 + curves | Hold **SF0** → −100 |
| 4 | Rud | I3 | **Reversed** · ≈ ±80% limits |
| 5 | `3D` | **SA** | 6G / 3D mode select |
| 6 | Col | I2 + pitch curves | Collective |

## Servos / airframe notes (from setup work)

- K110S uses ~**2 g** servos (not identical to older K110 1.9 g parts).  
- Worn / sloppy servos cause hover drift even when the radio is correct.  
- After crashes: check main shaft, spindle/grips, links, blade track — see [troubleshooting](troubleshooting.md).

## Related

- [Calibration](calibration.md)
- [Tuning & trim](tuning-and-trim.md)
- [← Model home](README.md)
