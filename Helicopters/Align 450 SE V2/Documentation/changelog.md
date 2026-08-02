# Session changelog

Ordered notes from the setup work that led to this documentation pack.

1. **Yaw runaway** — extreme spin on center rudder; other stick = other way → treated as gyro sense / HH loop, not mild drift.  
2. Clarified **HH vs rate** on TX16S = gain channel sign/value (**SA**), not a separate mystery protocol.  
3. Confirmed mechanics mostly OK (collective level through thr, tail 0° mid, yaw moves blades) while still debugging sense carefully.  
4. Spin issue **sorted**.  
5. Heavy **cyclic trim** need → swash geometry; leveler fits 5 mm shaft; flybar (no FBL level cal).  
6. Levelled at mid stick; next steps documented (travel check, arms, flybar, blades, track).  
7. **2S** approved for tune only; **3S** for real flight.  
8. Wanted **rates + Normal/Idle** in the TX — full EdgeTX plan with curves.  
9. Old **CPI** `-70/-35/0/40/80` and linear **CTH** — Normal pitch revised for hover at mid; sensitivity complaint clarified as **cyclic** → dual rates/expo primary.  
10. Added **Low / Med / High** rates on **SC**.  
11. Switch map locked: **SF** hold, **SE** modes, **SA** gain, **SB** lights, **SC** rates, **SD** timer.  
12. **Coll. pitch source = PIT**; pitch curves on **PIT input**; **AUX1 = CYC3** kept.  
13. GitHub repo + droppable **SD Card Files** backup created from live F: card (`model3.yml`, image, RGBLED, GaugeRotary).  
14. **2026-08-02 refresh** from F: `model3.yml` — Normal FM **aileron trim ≈ +22**; main screen **GaugeRotary → Gauge**; SC label text **Low/Mid/High**; dropped unused `WIDGETS/GaugeRotary` from this pack; labels hash updated.

## Related

- [Model home](README.md)
- [Setup summary](SETUP.md)
