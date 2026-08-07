# Flight modes, throttle & pitch curves

Starter curves for **Align 450 XL** — **not** a copy of the tuned SE V2 tables. Expect to edit these on the radio after levelling the swash.

## Modes (**SE**)

| Mode | Name | Role |
|------|------|------|
| FM0 | Normal | Spool, hover, land |
| FM1 | Idle1 | Higher / flatter HS |
| FM2 | Idle2 | More HS / pitch |

## Default curve tables (5-point)

### Normal

**CTH — throttle**
| X | Y |
|---|---|
| -100 | -100 |
| -50 | -80 |
| 0 | 0 |
| 50 | 50 |
| 100 | 80 |

**CPI — pitch** (0° at mid — tune hover pitch afterward)
| X | Y |
|---|---|
| -100 | -50 |
| -50 | -25 |
| 0 | **0** |
| 50 | 40 |
| 100 | 70 |

### Idle-Up 1

**CT1:** `-100,70 | -50,75 | 0,80 | 50,80 | 100,80`  
**CP1:** `-100,-70 | -50,-35 | 0,0 | 50,35 | 100,70`

### Idle-Up 2

**CT2:** `-100,80 | -50,85 | 0,90 | 50,90 | 100,90`  
**CP2:** `-100,-80 | -50,-40 | 0,0 | 50,40 | 100,80`

## Related

- [Dual rates](dual-rates-and-expo.md)
- [← Model home](README.md)
