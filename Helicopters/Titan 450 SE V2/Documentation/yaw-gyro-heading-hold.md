# Yaw, gyro & heading hold

## What we saw

On liftoff the 450 could **spin extremely fast** on center rudder; holding the other way spun the other way. That is a **runaway**, not mild torque drift.

## Heading hold vs “just a gain switch”

On the TX16S, HH vs rate is often the **sign/range of the gain channel** (**SA** → GEAR):

| Typical | Mode |
|---------|------|
| Negative gain (e.g. −40) | Rate / Normal gyro mode |
| Positive gain (e.g. +28, +60) | **Heading hold** |

Same channel also sets how hard it works. Positive vs negative is **mode**, not merely “more gain.”

- **Rate:** damps yaw rate; centered stick doesn’t hard-lock a heading  
- **HH:** holds heading; centered stick means “stay pointed this way”

## Sense (direction) check

1. HH on (**positive** gain)  
2. Rotate the **whole heli** about yaw (nose left/right)  
3. Tail pitch must **oppose** the nose  

Stick moving the tail the “right way” only proves **servo** direction — not gyro sense.

If it still hard-spins either way: flip **gyro sense** once and retest. Do not chase with −40/28/60 first.

## Gains we discussed

Example positions used while diagnosing: **−40 / +28 / +60**.  
After sense is correct, tune HH from a **moderate** positive value; high HH with wrong sense only makes the spin angrier.

## Related

- [Switch map](switch-map.md)
- [Troubleshooting](troubleshooting.md)
- [← Model home](README.md)
