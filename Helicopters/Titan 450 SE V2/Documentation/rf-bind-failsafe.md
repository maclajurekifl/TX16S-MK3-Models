# RF, bind & failsafe — D8R-II Plus

## Module (`model1.yml`)

| Field | Value |
|-------|--------|
| External RF | **MULTI** |
| Protocol | **FrSky D → D8** (`subType: 3,0`) |
| Channels | **6** |
| TX failsafe | **Not set** (FrSky D failsafe is on the RX) |
| optionValue | **0** until you fine-tune (then save the midpoint) |

Requires TX16S **4-in-1 / CC2500**. Not Spektrum, not ELRS-only.

## Bind

1. TX: model **Titan 450 SE V2** · External RF → **MULTI → FrSky D → D8**  
2. Leave side pins alone for bind (A1–X jumper OK for voltage sense)  
3. Hold **F/S** on the D8R · power RX · red LED **flashing**  
4. TX → **Bind**  
5. Power off · release F/S · power on → LED **solid**  
6. **RF freq fine-tune** (required for FrSky D): walk until link drops low/high → set midpoint  

Receiver number: use a **unique** number if you have other FrSky D receivers on this radio.

## Failsafe (on the RX)

1. Bound, TX and RX on  
2. Sticks/switches to safe pose (thr low / hold idea, cyclic mid)  
3. **Brief press** F/S on the D8R (< 1 s)  

Test motor unplugged: TX off → outputs go to those positions.

## Related

- [Wiring](d8r-ii-plus-wiring.md)
- [← Model home](README.md)
