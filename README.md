# TX16S MK3 Models

EdgeTX model backups and SD assets for a Radiomaster **TX16S MK3**.

## Start here

| Link | What |
|------|------|
| **[Documentation](Documentation/README.md)** | Repo rules, how to add models, AI brief |
| **[Conventions](Documentation/CONVENTIONS.md)** | Layout, SD packs, naming, updates |

## Layout

```
Documentation/          # Repo-wide conventions
Helicopters/<Name>/
  SD Card Files/        # Drop onto SD root (merge)
  Documentation/        # Model homepage + guides
Drones/<Name>/          # Same shape
```

## Restore a model onto the transmitter

1. Mount the SD (e.g. `F:\`).
2. Open that model's **`SD Card Files`** folder.
3. Copy **everything inside** onto the SD **root** and merge.
4. Eject, power on, select the model.

Details: each model's `Documentation/RESTORE.md`.

## Models

| Category | Model | Documentation | Status |
|----------|--------|---------------|--------|
| Helicopters | [Align 450 SE V2](Helicopters/Align%20450%20SE%20V2/Documentation/README.md) | Homepage + guides | Backed up |
| Helicopters | [Align 450 XL](Helicopters/Align%20450%20XL/Documentation/README.md) | Homepage + guides | Pack ready — R86C bind |
| Helicopters | [Titan 450 SE V2](Helicopters/Titan%20450%20SE%20V2/Documentation/README.md) | Homepage + guides | Pack ready — D8R-II Plus bind |
| Helicopters | [Honey Bee King 2](Helicopters/Honey%20Bee%20King%202/Documentation/README.md) | Homepage + guides | Backed up |
| Helicopters | [XK K110S](Helicopters/XK%20K110S/Documentation/README.md) | Homepage + guides | Backed up |
| Drones | [Emax Hawk 5](Drones/Emax%20Hawk%205/Documentation/README.md) | Homepage + guides | Pack ready — bind + BF AUX rematch |
| Utility | [Simulator](Simulator/Documentation/README.md) | Homepage | Pack ready — USB / full sticks + SB LEDs |

### Align 450 SE V2

- [Homepage](Helicopters/Align%20450%20SE%20V2/Documentation/README.md)
- [SD Card Files](Helicopters/Align%20450%20SE%20V2/SD%20Card%20Files/)
- [Switch map](Helicopters/Align%20450%20SE%20V2/Documentation/switch-map.md)
- [Flying guide](Helicopters/Align%20450%20SE%20V2/Documentation/flying-guide.md)

### Align 450 XL

- [Homepage](Helicopters/Align%20450%20XL/Documentation/README.md)
- [SD Card Files](Helicopters/Align%20450%20XL/SD%20Card%20Files/)
- [Switch map](Helicopters/Align%20450%20XL/Documentation/switch-map.md)
- [R86C wiring](Helicopters/Align%20450%20XL/Documentation/r86c-wiring.md)
- [RF bind & failsafe](Helicopters/Align%20450%20XL/Documentation/rf-bind-failsafe.md)

### Titan 450 SE V2

- [Homepage](Helicopters/Titan%20450%20SE%20V2/Documentation/README.md)
- [SD Card Files](Helicopters/Titan%20450%20SE%20V2/SD%20Card%20Files/)
- [Switch map](Helicopters/Titan%20450%20SE%20V2/Documentation/switch-map.md)
- [D8R-II Plus wiring](Helicopters/Titan%20450%20SE%20V2/Documentation/d8r-ii-plus-wiring.md)
- [RF bind & failsafe](Helicopters/Titan%20450%20SE%20V2/Documentation/rf-bind-failsafe.md)

### Honey Bee King 2

- [Homepage](Helicopters/Honey%20Bee%20King%202/Documentation/README.md)
- [SD Card Files](Helicopters/Honey%20Bee%20King%202/SD%20Card%20Files/)
- [Switch map](Helicopters/Honey%20Bee%20King%202/Documentation/switch-map.md)
- [R86C wiring](Helicopters/Honey%20Bee%20King%202/Documentation/r86c-wiring.md)
- [Flying guide](Helicopters/Honey%20Bee%20King%202/Documentation/flying-guide.md)

### XK K110S

- [Homepage](Helicopters/XK%20K110S/Documentation/README.md)
- [SD Card Files](Helicopters/XK%20K110S/SD%20Card%20Files/)
- [Switch map](Helicopters/XK%20K110S/Documentation/switch-map.md)
- [Calibration order](Helicopters/XK%20K110S/Documentation/calibration.md)
- [Flying guide](Helicopters/XK%20K110S/Documentation/flying-guide.md)

### Emax Hawk 5

- [Homepage](Drones/Emax%20Hawk%205/Documentation/README.md)
- [SD Card Files](Drones/Emax%20Hawk%205/SD%20Card%20Files/)
- [Switch map](Drones/Emax%20Hawk%205/Documentation/switch-map.md)
- [Betaflight modes](Drones/Emax%20Hawk%205/Documentation/betaflight-modes.md)
- [RF & binding](Drones/Emax%20Hawk%205/Documentation/rf-and-binding.md)

### Simulator

- [Homepage](Simulator/Documentation/README.md)
- [SD Card Files](Simulator/SD%20Card%20Files/)
- [Switch map](Simulator/Documentation/switch-map.md)
