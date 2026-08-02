# Switch map & keybinds

**Emax Hawk 5** — multirotor model patterned after your radio’s **AERO** (`model1`) style: direct switch→channel mixes, Outputs-first screens.

**Rule:** higher switch position = safer / more level. Lower = more 3D / rates.

Widget labels are always **Up / Mid / Down** (high → low).

## Switches → channels

| Switch | Up | Mid | Down | Channel |
|--------|----|-----|------|---------|
| **SA** | Hi intensity | Mid | Lo intensity | CH8 |
| **SB** | Blue | Sapphire | Off | CH9 (+ TX RGB) |
| **SC** | Low rates | Mid rates | High rates | — (inputs only) |
| **SD** | Pause | Run | Reset | — |
| **SE** | **Level** | **Horizon** | **Acro** | CH5 Mode |
| **SF** | **SAFE** (thr cut, CH6 low) | — | **ARMED** (CH6 high) | CH6 |
| **SG** | *(unused)* | | | — |
| **SH** | Off | — | On (hold) | CH7 |
| **SW1** (btn **1**) | Off | — | Turtle (press again to Off) | CH10 |

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
2. **Switches SA–SD** — left column SA→SD labels · right column live values / timer  
3. **Switches SE–SW1** — left SE/SF/SH/SW1 labels · right live values  
4. **Info** — model/RF text, TX voltage, timer, radio link  

## Before arm

**SF Up** · **SE Up** (Level) · **SC Up** (Low rates) · thr low

## Related

- [Betaflight modes](betaflight-modes.md) · [RF](rf-and-binding.md) · [← Home](README.md)
