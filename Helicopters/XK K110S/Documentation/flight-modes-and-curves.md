# Flight modes, throttle & pitch curves

Values from live **`MODELS/model4.yml`** (point dump). Confirm on the radio Curves screen if you change anything later.

## Modes (**SE**)

| Mode | Name | Switch | Curves used |
|------|------|--------|-------------|
| FM0 | Normal | (default / ↑) | **CTN** thr · **CPN** pitch |
| FM2 | Zero | `SE1` (mid) | Still Normal mixes (no Idle-Up REPL) |
| FM1 | Idle Up | `SE2` (↓) | **CTI** thr · **CPI** pitch |

Idle-Up is applied by **REPL** mixes on CH3 and CH6 when **SE2** is active — not by CCPM.

## Channel roles

| CH | Mix | Curve |
|----|-----|-------|
| CH3 Thr | I2 + CTN; REPL + CTI on SE2 | Throttle |
| CH6 Col | I2 + CPN; REPL + CPI on SE2 | Collective |

## Curve tables (5-point Y @ −100 / −50 / 0 / 50 / 100)

### Normal

**CTN — throttle**
| Stick | Y |
|-------|---|
| -100 | -100 |
| -50 | -36 |
| 0 | 30 |
| 50 | 30 |
| 100 | 30 |

Flat top ≈ EdgeTX **+30** — tame Normal head speed.

**CPN — pitch**
| Stick | Y |
|-------|---|
| -100 | -20 |
| -50 | -10 |
| 0 | 0 |
| 50 | 30 |
| 100 | 60 |

### Idle-Up

**CTI — throttle**
| Stick | Y |
|-------|---|
| -100 | -50 |
| -50 | 0 |
| 0 | 50 |
| 50 | 50 |
| 100 | 50 |

**CPI — pitch**
| Stick | Y |
|-------|---|
| -100 | -60 |
| -50 | -30 |
| 0 | 0 |
| 50 | 30 |
| 100 | 60 |

Mid stick ≈ 0° collective in Idle-Up when mechanics are set for that.

## Related

- [Setup summary](SETUP.md)
- [How to fly](flying-guide.md)
- [← Model home](README.md)
