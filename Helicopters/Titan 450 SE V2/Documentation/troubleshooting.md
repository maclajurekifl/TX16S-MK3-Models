# Troubleshooting

| Symptom | Likely cause | What to do |
|---------|--------------|------------|
| Extreme spin either way on liftoff | Gyro **sense** reversed (HH runaway) | Flip gyro sense; confirm oppose test with HH on |
| Mild yaw drift only | Torque / gain / trim | Tune HH gain; check 0° tail at mid; mechanical |
| Twitchy fore/aft or left/right | Cyclic rates too hot | **SC Low**; more expo / less weight |
| Twitchy up/down collective | Pitch curve too steep / 0 at mid in Normal | Soften **CPI**; hover pitch at mid stick |
| Needs lots of cyclic trim | Swash not level / arms not 90° | [Swash levelling](swashplate-leveling.md); zero trim first (Normal already has a small ail trim in the backup) |
| Modes don’t change thr/pitch | FM not gating mixes / PIT lines | Check mix Modes + PIT input curves |
| One swash arm follows thr only | AUX1 sourced from Thr by mistake | Set AUX1 back to **CYC3** |
| ESC won’t arm | Thr curve bottom / hold / direction | CTH `-100,-100`; **SF** off; stick low |
| Idle climbs at mid stick | Pitch mid not 0 (or HS jump) | CP1/CP2 mid tweak; match HS from Normal |
| Lights wrong on SB | Missing RGBLED scripts | Restore `SCRIPTS/RGBLED` from SD Card Files |

## Related

- [Yaw / gyro](yaw-gyro-heading-hold.md)
- [Dual rates](dual-rates-and-expo.md)
- [Swash levelling](swashplate-leveling.md)
- [← Model home](README.md)
