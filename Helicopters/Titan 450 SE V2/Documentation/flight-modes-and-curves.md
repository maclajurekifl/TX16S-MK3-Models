# Flight modes, throttle & pitch curves

## Important

The **Flight modes** screen only names modes and assigns **SE**.  
It does **not** list curves. Curves are attached on:

- **Throttle** → Mixers → THRO (`CTH` / `CT1` / `CT2`)
- **Pitch** → Inputs → **PIT** (`CPI` / `CP1` / `CP2`), with Heli **Coll. pitch source = PIT**

## Modes (**SE**)

| Mode | Name | Role |
|------|------|------|
| FM0 | Normal | Spool, hover, land — soft thr, hover pitch near mid stick |
| FM1 | Idle1 | Constant-ish HS, 0° pitch at mid |
| FM2 | Idle2 | Higher HS, more pitch authority |

## Curve tables (5-point, X/Y −100…100)

### Normal

**CTH — throttle** (soft, even ramp — less mid-stick bite)
| X | Y |
|---|---|
| -100 | -100 |
| -50 | -88 |
| 0 | **-40** |
| 50 | **10** |
| 100 | **45** |

**CPI — pitch** (hover-centered, not 0 at mid)
| X | Y |
|---|---|
| -100 | -35 |
| -50 | 15 |
| 0 | **40** |
| 50 | 55 |
| 100 | 70 |

### Idle-Up 1

**CT1**
| X | Y |
|---|---|
| -100 | 70 |
| -50 | 75 |
| 0 | 80 |
| 50 | 80 |
| 100 | 80 |

**CP1**
| X | Y |
|---|---|
| -100 | -75 |
| -50 | -40 |
| 0 | **0** |
| 50 | 40 |
| 100 | 75 |

### Idle-Up 2

**CT2**
| X | Y |
|---|---|
| -100 | 80 |
| -50 | 85 |
| 0 | 90 |
| 50 | 90 |
| 100 | 90 |

**CP2**
| X | Y |
|---|---|
| -100 | -90 |
| -50 | -50 |
| 0 | **0** |
| 50 | 50 |
| 100 | 90 |

```
Normal  CTH: -100,-100 | -50,-88 | 0,-40 | 50,10 | 100,45
Normal  CPI: -100,-35  | -50,15  | 0,40  | 50,55 | 100,70
Idle1   CT1: -100,70   | -50,75  | 0,80  | 50,80 | 100,80
Idle1   CP1: -100,-75  | -50,-40 | 0,0   | 50,40 | 100,75
Idle2   CT2: -100,80   | -50,85  | 0,90  | 50,90 | 100,90
Idle2   CP2: -100,-90  | -50,-50 | 0,0   | 50,50 | 100,90
```

## Why Normal pitch is not “0 at mid”

An older CPI shaped like `-70/-35/0/40/80` put **0 at center**, so hover lived on the steep upper stick — harsh collective.  
Normal now targets **positive pitch at mid** (`0,40`). Idle modes keep **0 at mid**.

## Quick retune

| Feel | Change |
|------|--------|
| Hover stick high in Normal | Raise CPI mid (`0,45` / `0,50`) |
| Hover stick low | Lower CPI mid |
| Idle climbs at mid | CP1/CP2 mid → `0,-5` |
| Idle too fierce | Lower CT1/CT2 Y by ~5–10 |
| ESC won’t arm | Keep CTH bottom `-100,-100`; hold off; stick low |

## Related

- [EdgeTX programming](edgetx-programming.md)
- [Dual rates](dual-rates-and-expo.md) (cyclic — separate from these curves)
- [← Model home](README.md)
