# Troubleshooting

| Symptom | Likely cause | What to do |
|---------|--------------|------------|
| Won’t enter gyro or 6G cal | Rates too low / wrong mode | **SC High**; correct **SA** (3D vs 6G); full stick throws |
| CH5 stuck mid / SA does nothing | Mix / reverse / limits | CH5 source **SA**; monitor ≈ ±100 |
| Both SA positions feel the same | CH5 not reaching board | Check bind, CH5 travel, mode test with Hold ON |
| Walks in **6G** after setup | Missing hover cal / crooked swash | Level in **3D** → [6G hover cal](calibration.md) |
| Walks with swash looking level | Track, spindle, grips, residual bias | Mechanics checklist in [tuning](tuning-and-trim.md); redo cal |
| Left drift after servo swap (same side) | Not that servo | Links, shaft, track, 6G cal |
| Weak lift after crash | Pitch/RPM vs damage | Check pitch curve, shaft, gears, motor; don’t assume radio only |
| Twitchy cyclic | Rates hot | **SC Low**; more expo |
| Idle-Up feels wrong at mid | Pitch mid not 0 / HS jump | Check **CPI** mid; mechanics 0° at mid |
| Motor won’t stop | Hold SF wrong | Confirm **SF0** override CH3 −100 |
| Bind / weak link | SFHSS / fine-tune | [RF](rf-and-binding.md); option ≈ **+38** |
| Lights wrong on SB | Missing scripts | Restore `SCRIPTS/RGBLED` from SD Card Files |
| Swash fights itself / weird CCPM | Radio swash not `---` | Set swash **`---`** — never 120° on TX |

## Related

- [Calibration](calibration.md)
- [Tuning & trim](tuning-and-trim.md)
- [Switch map](switch-map.md)
- [← Model home](README.md)
