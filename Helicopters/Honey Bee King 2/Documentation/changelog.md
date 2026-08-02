# Session changelog — Honey Bee King 2

What we decided while bringing this model up (radio + mechanics).

1. Cloned **Align 450 SE V2** radio structure (CCPM 120°, PIT curves, CYC3, SF/SE/SC).  
2. Receiver: **R86C** on **FrSky X / LBT** (not Spektrum; EU unit may never show D16 double-flash).  
3. RF freq. fine-tune + **Custom** failsafe (thr low, cyclic/pit center).  
4. Wiring AETR: CH1 ESC · CH2 left · CH3 front · CH4 gyro · **CH5 empty** · CH6 right (**CYC3**).  
5. Gyro has no remote gain lead → remove/ignore SA→CH5 gain mixes; tune gain on the unit.  
6. Geometry at **Idle-Up mid** (washout level, swash flat, blades ~0°); Normal CPI mid **40** for hover.  
7. Softened pitch bottoms vs Align so low stick doesn’t pack the swash into the frame.  
8. Dual rates: Ail/Ele 55/70/100 + expo 40/30/25; Rud 60/75/90 + expo 35/25/20.  
9. Swash weights ~**60%** collective/ail/ele.  
10. Pack **3S**; blades ~278 mm stock, 300 mm OK with clearance.  
11. Repo pack: `model5.yml` + `HBK2.png` from TX SD (`F:\`).  

## Related

- [Setup summary](SETUP.md)
- [← Model home](README.md)
