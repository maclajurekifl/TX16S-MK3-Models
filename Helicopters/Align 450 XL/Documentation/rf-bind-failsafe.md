# RF, bind & failsafe — R86C

Same RF family as [Honey Bee King 2](../Honey%20Bee%20King%202/Documentation/rf-bind-failsafe.md).

## Module (`model2.yml`)

| Field | Value |
|-------|--------|
| External RF | **MULTI** |
| Protocol | **FrSky X** · **LBT** (`subType: 15,2`) |
| Channels | **6** |
| Failsafe | **Custom** |
| optionValue | **0** until you fine-tune after bind |

Requires TX16S **4-in-1 / CC2500**. Not Spektrum, not ELRS-only.

## Bind (R86C · EU LBT)

1. TX: model **Align 450 XL** · MULTI → **FrSky X** → **LBT (EU)**  
2. RX: hold bind → power on (flashing)  
3. TX: **Bind** → prefer **CH1–8 Telemetry On**  
4. Power-cycle RX when solid  
5. **RF freq fine-tune** — set midpoint of the working range  

## Failsafe (Custom)

| CH | Failsafe target |
|----|-----------------|
| 1 Thr | **Low** (−100) |
| 2 Ail · 3 Ele · 6 Pit | **Center** |
| 4 Rud | **Center** |
| 5 | As mixed (gain) |

Test motor unplugged: TX off → outputs go to those positions.

## Related

- [R86C wiring](r86c-wiring.md)
- [← Model home](README.md)
