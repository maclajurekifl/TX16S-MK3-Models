# Dual rates & expo

## What problem this solved

The heli felt **too sensitive forward/back and left/right** (cyclic).  
That is **not** fixed by pitch/throttle curves. Those reshape collective and head speed only.

**Fix:** dual rates + expo on **Aileron / Elevator / Rudder**, switch **SC**.

## Rates (**SC**)

### Aileron & Elevator

| Rates | Switch | Weight | Expo |
|-------|--------|--------|------|
| Low | SC↑ (`SC0`) | 55% | 40% |
| Medium | SC- (`SC1`) | 75% | 30% |
| High | SC↓ (`SC2`) | 100% | 25% |

### Rudder

| Rates | Switch | Weight | Expo |
|-------|--------|--------|------|
| Low | SC↑ (`SC0`) | 65% | 35% |
| Medium | SC- (`SC1`) | 80% | 25% |
| High | SC↓ (`SC2`) | 100% | 20% |

## What “expo” means

**Expo** = **exponential** stick response.

- Higher expo → softer around center (small stick moves do less)  
- Full throw still available at the ends  
- Lower expo → closer to linear → twitchier in hover  

## Pitch curves vs expo (one line)

| Tool | Affects |
|------|---------|
| Pitch / thr curves | Collective & motor vs stick height |
| Dual rates + expo | How hard cyclic/yaw respond |

Use **both**: curves for Normal/Idle, rates for calm cyclic.

## Where it lives in EdgeTX

**Inputs** → Ail / Ele / Rud → three lines each, gated by **SC**.

## Related

- [Switch map](switch-map.md)
- [Flight modes & curves](flight-modes-and-curves.md)
- [← Model home](README.md)
