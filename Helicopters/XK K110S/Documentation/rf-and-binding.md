# RF & binding (S-FHSS)

From live **`model4.yml`** Internal module settings.

## This model’s RF

| Setting | Value |
|---------|--------|
| Module | Internal **MULTI** (`TYPE_MULTIMODULE`) |
| Protocol | Futaba **SFHSS** (`subType: 21,0`) |
| Channels | Start 0 · count 8 |
| Failsafe | **HOLD** |
| Option / freq fine-tune | **38** (≈ **+38** on the radio) |

Needs a TX16S **4-in-1** (CC2500). ELRS-only radios need an external multiprotocol module for S-FHSS.

## Bind (typical MULTI SFHSS)

1. Tx on, model **XK 110s** selected, throttle low, **SF Hold ON**.  
2. Put the K110S into bind (canopy off → plug pack → hold bind button on the board ~1–2 s until LED shows bind mode).  
3. On the TX: Model Setup → Internal RF → **Bind**.  
4. Keep Tx and heli within ~0.5–1 m until linked.  
5. Confirm sticks move servos with Hold still ON.

Exact bind UI labels vary slightly by EdgeTX version — use the Internal RF Bind action for this model.

## Fine-tune note

This backup’s working value is **+38**. Community range on this airframe often sits somewhere like mid-band; if link is weak, adjust **optionValue** carefully and avoid the weak end of the range. Re-save the model after changes and refresh this pack if you change it permanently.

## Related

- [Restore](RESTORE.md)
- [Setup summary](SETUP.md)
- [← Model home](README.md)
