# Session changelog

Ordered notes from the setup work that led to this documentation pack.

1. Confirmed airframe **XK K110S**, protocol **Futaba S-FHSS**, TX16S **4-in-1 MULTI**.  
2. Radio must use heli swash **`---`** — FBL mixes; do not program 90°/120° CCPM on the TX.  
3. Built EdgeTX model **XK 110s** (`model4.yml`): AETR + CH5 **SA** (6G/3D) + CH6 collective.  
4. Switch map locked: **SF** hold, **SE** Normal/Zero/Idle-Up, **SA** 6G/3D, **SB** lights, **SC** rates High/High/Low, **SD** timer.  
5. Curves set on radio: **CTN/CTI/CPN/CPI** as in [flight-modes-and-curves](flight-modes-and-curves.md).  
6. RF fine-tune landed near **+38**; failsafe HOLD.  
7. Long left-drift debug: servo swap didn’t move the fault; new main shaft didn’t fix; prefer links + board cal over TX trim.  
8. Documented calibration **order**: level in **3D** → **gyro/sensor cal** → **6G hover cal**, with this radio’s switches (**SF** hold, **SA**, **SE** Normal, **SC** High).  
9. Trim policy: keep ail/ele trim & subtrim **0** at plug-in; 6G hover cal is the board-side trim.  
10. GitHub pack: lean **SD Card Files** from live `F:\` + Align-style docs under `Helicopters/XK K110S/`.

## Related

- [Model home](README.md)
- [Setup summary](SETUP.md)
