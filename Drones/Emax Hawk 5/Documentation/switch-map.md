# Switch map & keybinds

**Emax Hawk 5** — multirotor model patterned after your radio’s **AERO** (`model1`) style: direct switch→channel mixes, Outputs-first screens. Switch *habits* match the helis.

## Switches → channels

| Switch | Function | Channel |
|--------|----------|---------|
| **SA** | Level intensity | CH8 |
| **SB** | LEDs (TX RGB + AUX) | CH9 |
| **SC** | Rates Low/Mid/High (radio expo) | — (inputs only) |
| **SD** | Timer run / reset | — |
| **SE** | Level / Acro / Horizon | CH5 Mode |
| **SF** | SAFE / ARMED (+ thr cut when safe) | CH6 Arm |
| **SG** | Beeper | CH7 |
| **SW1** | Turtle | CH10 |

## Sticks → inputs (AETR)

| Input | Stick | CH |
|-------|--------|-----|
| **Roll** | Right L/R | 1 |
| **Pitch** | Right fore/aft | 2 |
| **Thr** | Left up/down | 3 |
| **Yaw** | Left L/R | 4 |

## Outputs / limits

No custom limit table (same idea as **AERO**): default **±100%**. Watch the **Outputs** widget on the main screen to verify AUX bars.

## Screens

1. **Flight** — Thr rotary, Roll/Pitch/Yaw gauges, timer, AUX outputs (CH5+)  
2. **Switches SA–SD** — label + positions left · live value/impact right  
3. **Switches SE–SW1** — mode/arm/beeper/turtle · live values right  
4. **Info** — model/RF text, TX voltage, timer, radio link  

Top bar: name · TX voltage · radio info · date (no duplicates).  

## Before arm

**SF = SAFE** · **SE = Level** · **SC = Low** · thr low

## Related

- [Betaflight modes](betaflight-modes.md) · [RF](rf-and-binding.md) · [← Home](README.md)
