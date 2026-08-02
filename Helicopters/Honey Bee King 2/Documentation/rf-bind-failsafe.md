# RF, bind & failsafe

## Module (`model5.yml`)

| Field | Value |
|-------|--------|
| Internal RF | **MULTI** |
| Protocol | **FrSky X** · **LBT** (`subType: 15,2`) |
| Channels | **6** |
| Failsafe | **Custom** |
| optionValue | **14** (RF freq. fine-tune — retune if you rebind) |

Requires a TX16S **4-in-1 / CC2500** (not ELRS-only). R86C is not Spektrum and not ELRS.

## Bind (R86C · EU LBT)

Many EU R86Cs **do not cycle** D8/D16 flash patterns — they stay on a single blink in bind for **D16 LBT**.

1. TX: MULTI → **FrSky X** → **LBT (EU)**  
2. RX: hold bind → power on (flashing)  
3. TX: **Bind** → prefer **CH1–8 Telemetry On**  
4. Power-cycle RX when solid  
5. Do **RF freq. fine-tune** (median of lose-link low / high)

If your unit cycles: double flash = D16 (FCC path). Single-only forever on an EU unit → still bind as **LBT**.

## Failsafe (Custom)

Not the same as **SF** throttle hold. Hold is you; failsafe is lost link.

| CH | Failsafe target |
|----|-----------------|
| 1 Thr | **Low** (−100) |
| 2 Ail · 3 Ele · 6 Pit | **Center** (mid / level swash) |
| 4 Rud | **Center** |
| 5 | Unused |

Test with motor unplugged: TX off → servos go to those positions.

Optional RX-side store: within 10 s of RX power-up, press R86C bind once with sticks in the safe pose.

## Related

- [R86C wiring](r86c-wiring.md)
- [← Model home](README.md)
