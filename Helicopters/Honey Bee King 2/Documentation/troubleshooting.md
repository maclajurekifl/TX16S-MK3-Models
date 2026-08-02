# Troubleshooting

| Symptom | Likely cause | What to do |
|---------|--------------|------------|
| Twitchy up/down collective | Pitch curve too steep / 0 at mid in Normal | Soften **CPI**; hover pitch at mid stick |
| Needs lots of cyclic trim | Swash not level / arms not 90° | [Swash levelling](swashplate-leveling.md); zero trim first |
| Front servo opposite on collective | Channel reverse | Reverse **CH3** (front), then fix cyclic with swash signs |
| Aileron tilts the wrong way | Swash ail sign | Flip **aileron weight** sign in Heli setup |
| Swash packs into frame at low stick | Too much negative pitch travel | Raise CP bottoms / lower coll. weight |
| Idle climbs at mid stick | Pitch mid not 0 | CP1/CP2 mid tweak |
| SA does nothing to gyro | No gain lead | Expected — tune gain on the gyro |
| Won’t bind / no D16 double flash | EU LBT R86C | Bind **FrSky X / LBT** on single blink; fine-tune |
| Short range after bind | No freq fine-tune | Set RF freq. fine-tune median |
| Crystal Futaba RX won’t work | Wrong RF era | Use R86C / 2.4 GHz only |

## Checklist order

1. Hold works (CH1 → −100)  
2. Swash level at **Idle-Up mid**  
3. Directions (collective + cyclic)  
4. Curves & rates  
5. Failsafe Custom test (motor unplugged)  

## Related

- [Swash levelling](swashplate-leveling.md)
- [RF, bind & failsafe](rf-bind-failsafe.md)
- [← Model home](README.md)
