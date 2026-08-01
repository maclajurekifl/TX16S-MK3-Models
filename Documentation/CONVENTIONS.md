# Conventions

Rules for using and changing this repository. Follow these so packs stay droppable and docs stay findable.

## Purpose

Store **EdgeTX model backups** for a TX16S MK3: SD assets you can merge onto the radio, plus documentation per model.

## Top-level layout

```
Documentation/          # Repo-wide rules (this folder)
Helicopters/<Name>/     # Rotary-wing models
Drones/<Name>/          # Multirotors / similar
README.md               # Model index + restore one-liner
```

Do **not** put aircraft setup guides in root `Documentation/` — those belong under the model.

## Per-model layout (required)

```
Helicopters/My Model/
  SD Card Files/        # EdgeTX SD *root* mirror (droppable)
  Documentation/        # Model homepage + guides
```

Same shape under `Drones/`.

### `SD Card Files/`

- Contents must match **SD card root** paths: `MODELS/`, `IMAGES/`, `SCRIPTS/`, `WIDGETS/`, etc.
- User restores by copying **inside** this folder onto the SD root (e.g. `F:\`) and **merging**.
- Include only assets **required** by that model (yml, bitmap, referenced scripts/widgets). Prefer lean packs over whole-card dumps.
- Add `MODELS/README-LABELS.txt` (or note in `Documentation/RESTORE.md`) if the file is `modelN.yml` and slot/labels matter.
- Do not nest as `SD Card Files/SD Card Files/...`.

### `Documentation/` (model)

| File | Role |
|------|------|
| `README.md` | **Homepage** — intro, image, links to other docs |
| `RESTORE.md` | How to drop the SD pack |
| `SETUP.md` | Short cheat sheet of the finished setup |
| Other `*.md` | Topic guides as needed (switches, curves, wiring, …) |
| `assets/` | Images used by docs |

Keep topic files focused; link between them. Avoid duplicating the same curve table in five places — one canonical doc + links.

## Naming

- Model folder name = human name of the aircraft (e.g. `Align 450 SE V2`).
- Prefer spaces as on the radio model name; GitHub links will encode them.
- Doc filenames: lowercase `kebab-case.md` (e.g. `switch-map.md`).

## Updating an existing model

1. Pull latest files from the TX SD for that model only.
2. Refresh `SD Card Files/` (replace yml/assets that changed).
3. Update docs if behaviour/switches/curves changed.
4. Note material changes in the model’s `changelog.md` if one exists.
5. Update the models table in root `README.md` if status/links change.

## What not to commit

- Whole-radio dumps (`RADIO/radio.yml`, every theme) unless truly shared and documented.
- Secrets, bind dumps with private data, large unrelated media.
- OS junk (`Thumbs.db`, `.DS_Store`) — already gitignored.

## Commits

Short messages that say **why** (e.g. “Refresh Align 450 model3.yml after Idle2 curve change”).

[← Repo docs index](README.md)
