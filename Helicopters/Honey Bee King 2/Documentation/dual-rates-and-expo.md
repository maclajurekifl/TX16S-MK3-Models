# Dual rates & expo

Cyclic sensitivity is controlled here — **not** by pitch/throttle curves.

**Fix twitchy cyclic:** dual rates + expo on **Aileron / Elevator / Rudder**, switch **SC**.

## Rates (**SC**) — from `model5.yml`

### Aileron & Elevator

| Rates | Switch | Weight | Expo |
|-------|--------|--------|------|
| Low | SC0 | 55% | 40% |
| Medium | SC1 | 70% | 30% |
| High | SC2 | 100% | 25% |

### Rudder

| Rates | Switch | Weight | Expo |
|-------|--------|--------|------|
| Low | SC0 | 60% | 35% |
| Medium | SC1 | 75% | 25% |
| High | SC2 | 90% | 20% |

## Expo vs rate

| Term | Meaning |
|------|---------|
| **Weight %** | How far full stick can go (the “rate”) |
| **Expo %** | Softens the **center** only — full stick still reaches that rate’s end |

High expo ≠ low rate.

## Pitch curves vs expo

| Tool | Affects |
|------|---------|
| Pitch / thr curves | Collective & motor vs stick height |
| Dual rates + expo | How hard cyclic/yaw respond |

Swash mix weights (~60%) also cap CCPM authority; they stack with rate weight.

## Where it lives in EdgeTX

**Inputs** → Ail / Ele / Rud → three lines each, gated by **SC**.

## Related

- [Switch map](switch-map.md)
- [Flight modes & curves](flight-modes-and-curves.md)
- [← Model home](README.md)
