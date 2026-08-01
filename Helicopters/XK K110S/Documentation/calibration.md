# Calibration order (3D swash → gyro → 6G hover)

**Order matters.** Do not skip ahead to 6G hover cal on a crooked swash, and do not confuse **gyro/sensor cal** (bench) with **6G hover cal** (short hover flight).

| Step | Name | Mode | Hold | Where |
|------|------|------|------|-------|
| **1** | Level swash mechanically | **SA = 3D** | **SF ON** | Bench |
| **2** | Gyro / sensor calibration | **SA = 3D** | **SF ON** | Bench, level table |
| **3** | 6G hover calibration | **SA = 6G** | Arm with **SF ON**, then hover | Field / open space |

Also: **SE = Normal** for all three. Prefer **ail/ele trim & subtrim = 0**.

For calibrations that need full stick throw, set **SC = High** (↑ or mid — both are 100% on this model). Low rates can prevent the board from entering cal mode.

---

## Identify switches (this TX16S setup)

| Function | Switch |
|----------|--------|
| Throttle hold | **SF** |
| 6G / 3D | **SA** → CH5 |
| Flight mode | **SE** → use **Normal** (↑) |
| Dual rates | **SC** → **High** for cal entry |

How to tell **SA** apart: see [switch map](switch-map.md).

---

## Step 1 — Level the swash in 3D (first)

Do this **before** either board calibration.

1. **SE ↑** Normal  
2. **SA = 3D** (not 6G)  
3. **SF = Hold ON**  
4. Heli on a **flat** table; canopy off if you want a clear view  
5. Tx on → plug battery → wait for gyro init (don’t move the heli)  
6. Sticks **centered**; raise collective to about **mid** (~0° pitch / arms ~**90°**)  
7. Adjust **links** until the swash is **flat** (front–back and left–right)  
8. Move collective alone a little: all **three** servos should rise together (no twist)

Do **not** fix a tilted swash with big CH1/CH2 trim or subtrim.

Details: [tuning & trim](tuning-and-trim.md).

---

## Step 2 — Gyro / sensor calibration (bench)

Teaches the board “this table is level.” **Not** a hover. Use after crashes, board/foam work, or weird power-ups.

### Prep

1. **SE ↑** Normal  
2. **SA = 3D**  
3. **SF = Hold ON** (motor cut)  
4. **SC = High** (full rates)  
5. Heli on a **flat, level** surface (tail boom level — shim the tail if the skids sit nose-high)  
6. Trims / subtrims **0**, sticks physically centered after the combo  
7. Plug in → wait for init → **don’t move** the heli during cal

### Stick combo (Mode 2)

Community / XK procedure used for this board family:

1. Hold **throttle stick bottom-left** (stick fully down **and** full left rudder).  
2. At the same time hold **cyclic bottom-right** (full right aileron **and** full aft elevator).  
3. Wait until the board **LED starts blinking** (often blue, fast).  
4. Return **rudder, aileron, and elevator** to **center** (throttle can stay down).  
5. Wait until the LED **stops blinking** → gyro/sensor cal finished.

If nothing happens: confirm **3D**, **High rates**, full stick corners, and that CH5 is really in 3D.

---

## Step 3 — 6G hover calibration (hover trim)

Teaches the heli what a **steady hover** feels like in **6G** (reduces walking / bias in self-level). Do only after step 1 (and preferably step 2).

### A. Arm cal mode (LED starts flashing)

1. **SE ↑** Normal  
2. **SA = 6G**  
3. **SF = Hold ON**  
4. **SC = High**  
5. Throttle stick **fully down**  
6. Pull **right stick fully toward you** (full **aft elevator**)  
7. Hold until the board **LED starts flashing** → cal mode armed  

### B. Record hover

1. **SF Hold OFF**  
2. Lift off and **hover as still as you can** for a few seconds  
   - Small cyclic to stay in one spot is OK  
   - LED usually **keeps flashing** during this  
3. Land gently; throttle stick **fully down**  
4. **SF Hold ON** again  

### C. Save (LED stops)

1. Still **SA = 6G**, stick **down**, Hold **ON**  
2. Full **aft elevator** again  
3. Hold until the **LED stops flashing** → saved  

Done. Fly in 6G and check drift. If still walking badly, re-check step 1 mechanics, then repeat step 3 — don’t stack TX trim.

---

## Quick “which cal am I doing?”

| | Gyro / sensor (step 2) | 6G hover (step 3) |
|--|------------------------|-------------------|
| **SA** | **3D** | **6G** |
| Flight | No — motor held off | Yes — short steady hover |
| Stick cue | Throttle **bottom-left** + cyclic **bottom-right** | Throttle **down** + **full aft elevator** |
| Goal | IMU “level” | Hover bias in 6G |

---

## Related

- [Switch map](switch-map.md)
- [Tuning & trim](tuning-and-trim.md)
- [Troubleshooting](troubleshooting.md)
- [← Model home](README.md)
