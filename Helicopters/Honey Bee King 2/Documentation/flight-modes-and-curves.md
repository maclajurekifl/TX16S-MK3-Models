# Flight modes, throttle & pitch curves

## Important

The **Flight modes** screen only names modes and assigns **SE**.  
Curves are attached on:

- **Throttle** → Mixers → THRO (`CTH` / `CT1` / `CT2`)
- **Pitch** → Inputs → **PIT** (`CPI` / `CP1` / `CP2`), with Heli **Coll. pitch source = PIT**

## Modes (**SE**)

| Mode | Name | Role |
|------|------|------|
| FM0 | Normal | Spool, hover, land — soft thr, hover pitch near mid stick |
| FM1 | Idle1 | Constant-ish HS, 0° pitch at mid |
| FM2 | Idle2 | Higher HS, more pitch authority |

## Curve tables (5-point Y, from `model5.yml`)

### Normal

**CTH — throttle**
| Point | Y |
|-------|---|
| 1 | -100 |
| 2 | -90 |
| 3 | -10 |
| 4 | 40 |
| 5 | 70 |

**CPI — pitch** (hover-centered, not 0 at mid)
| Point | Y |
|-------|---|
| 1 | -25 |
| 2 | 10 |
| 3 | **40** |
| 4 | 55 |
| 5 | 65 |

### Idle-Up 1

**CT1:** 65, 70, 75, 75, 75  

**CP1:** -55, -30, **0**, 35, 60  

### Idle-Up 2

**CT2:** 75, 85, 85, 85, 85  

**CP2:** -65, -35, **0**, 40, 70  

```
Normal  CTH: -100, -90, -10, 40, 70
Normal  CPI: -25, 10, 40, 55, 65
Idle1   CT1: 65, 70, 75, 75, 75
Idle1   CP1: -55, -30, 0, 35, 60
Idle2   CT2: 75, 85, 85, 85, 85
Idle2   CP2: -65, -35, 0, 40, 70
```

## Why Normal pitch is not “0 at mid”

Idle modes keep **0 at mid** for geometry and aerobatic reference.  
Normal uses mid **40** so hover sits near center stick (less hunting on the upper half).

**Level the swash / set 0° blades in Idle-Up at mid stick** — not with Normal CPI active at mid.

## Quick retune

| Feel | Change |
|------|--------|
| Hover stick high in Normal | Raise CPI mid (`45` / `50`) |
| Hover stick low | Lower CPI mid |
| Swash packs at low stick | Raise CP bottoms (less negative) |
| Idle climbs at mid | CP1/CP2 mid → `−5` |
| Idle too fierce | Lower CT1/CT2 Y by ~5–10 |
| ESC won’t arm | Keep CTH bottom low; hold off; stick low |

## Related

- [Swashplate levelling](swashplate-leveling.md)
- [Dual rates](dual-rates-and-expo.md)
- [← Model home](README.md)
