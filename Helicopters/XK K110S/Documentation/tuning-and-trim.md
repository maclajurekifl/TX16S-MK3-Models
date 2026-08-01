# Tuning & trim

## Prefer these (FBL micro)

| Fix | OK? |
|-----|-----|
| Level swash with **links** in **3D** | Yes |
| **Gyro/sensor cal** on a level table | Yes |
| **6G hover calibration** (board stores hover bias) | Yes — correct “trim” for 6G |
| Tiny TX trim as a last resort | Maybe once; don’t make it habit |

## Avoid as the main fix

- Holding **aileron / elevator trim** tabs on the TX16S at plug-in  
- Big **subtrim** on CH1 / CH2  

Why: at the next power-up the board treats that offset as the new center, so drift/feel gets worse or jumps between flights. Community advice on these XK boards: keep cyclic trim **0**, fix geometry + board cal.

Collective (CH6) subtrim is sometimes used carefully for pitch mid — still prefer mechanical first.

## Left drift checklist (order)

1. **Radio:** sticks center → CH1 ≈ 0; ail subtrim/trim 0; **SE** Normal.  
2. **Swash in 3D:** Hold ON — flat L/R and F/B; collective alone → all three servos move together.  
3. **Servos:** play test; equal collective move; swap rear servos — if drift **doesn’t follow** the servo, it’s not that servo.  
4. **Mechanics:** main shaft, spindle/feathering shaft, grips, blade track, bent skids.  
5. **Board:** [gyro cal](calibration.md) then **6G hover cal** if the walk is in 6G.

## Related

- [Calibration](calibration.md)
- [Troubleshooting](troubleshooting.md)
- [← Model home](README.md)
