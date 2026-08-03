# EdgeTX programming walkthrough

How this model is wired logically on the TX16S. Use with the live radio and [SD backup](../SD%20Card%20Files/).

## 1. Flight modes page

| Mode | Name | Switch |
|------|------|--------|
| FM0 | Normal | Default |
| FM1 | Idle1 | **SE** middle |
| FM2 | Idle2 | **SE** up |

No curves on this page — by design.

## 2. Inputs page

### Ail / Ele / Rud
Three lines each → **SC** Low / Med / High rates + expo ([details](dual-rates-and-expo.md)).

### PIT (collective command)
Three lines, source **Thr**, curves **CPI / CP1 / CP2**, active per FM0 / FM1 / FM2.

This is where pitch curves are applied.

## 3. Heli setup

| Field | Value |
|-------|--------|
| Swash | 120° |
| **Coll. pitch source** | **PIT** |
| Long / lat cyclic | Ail / Ele (as configured) |

Keep Coll. pitch source as **PIT** (not CYC3, not Thr stick raw if PIT already curves it).

## 4. Mixers page

| Channel | Port | Source | Notes |
|---------|------|--------|-------|
| THRO | THRO | Thr + **CTH/CT1/CT2** by FM | Motor / ESC |
| AILE | AILE | **CYC1** (or as working) | Swash |
| ELEV | ELEV | **CYC2** | Swash |
| RUDD | RUDD | Rud | Tail gyro |
| GEAR | GEAR | **SA** gain | Leave working values |
| AUX1 | AUX1 | **CYC3** | Third swash servo — **do not** change to Thr |

**SF** throttle hold overrides CH1 safe via special function.

## 5. Special functions (from backup)

| Switch | Function |
|--------|----------|
| SF | Override thr channel safe |
| SB | RGB_LED `blue` / `sapp` / `off` |
| SD | Timer related |

## 6. Bench checks

1. SE changes thr & pitch curve behaviour on the monitor  
2. SC changes cyclic throw  
3. Ail/Ele moves all three swash servos  
4. AUX1 still **CYC3**  
5. Coll. pitch source still **PIT**  

## Related

- [Flight modes & curves](flight-modes-and-curves.md)
- [D8R-II Plus wiring](D8R-II Plus-wiring.md)
- [â† Model home](README.md)
