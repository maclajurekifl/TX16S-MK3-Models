-- LedFx widget: shows current Simulator LED effect (GVAR1 / GV1 "FX")
local app_name = "LedFx"

local NAMES = {
  "Rainbow", "RainWave", "RainChase", "SplitHue", "Pastel",
  "SparkHue", "BlinkHue", "HalfHue", "BreatheH", "PinkBlue",
  "PulseRed", "PulseBlu", "PulseGrn", "PulseWht", "BreatheCy",
  "BreatheMg", "PulseOrg", "PulseLav", "Heartbeat", "AltPulse",
  "Police", "Ambulance", "StrobeW", "StrobeR", "USA",
  "Thunder", "WarnFlash", "AltEnds", "RedGrn", "YelStrobe",
  "Fire", "Ice", "Ocean", "Sunset", "Aurora",
  "Candle", "LimeWave", "Xmas", "WarmGlow", "SoftBlue",
  "Cylon", "DualScan", "Comet", "Theater", "Matrix",
  "Spinner", "Loading", "PinkChase", "OppDots", "FillBar",
  "Sparkle", "Twinkle", "HuePop", "GoldShim", "DotChase",
  "Disco", "AmberPulse", "BlinkPair", "Violet", "CrossFade",
  "Halves", "RGBStep", "StaticRain", "MagCyan", "EndFlash",
  "OppFade", "CompHalves", "RGBWash", "SinDot", "Checker",
  "VU-Thr", "AilHue", "EleBright", "RudShift", "StickMag",
  "ThrHeat", "XYColor", "ThrRud", "FadeHue", "OrgBlu",
}

local options = {
  { "Color", COLOR, WHITE },
}

local function create(zone, options)
  return { zone = zone, options = options }
end

local function update(wgt, options)
  if wgt then wgt.options = options end
end

local function refresh(wgt)
  if not wgt then return end
  local fx = 0
  if model and model.getGlobalVariable then
    fx = model.getGlobalVariable(0, 0) or 0
  end
  local n = #NAMES
  if fx < 0 then fx = (fx % n + n) % n end
  if fx >= n then fx = fx % n end
  local name = NAMES[fx + 1] or "?"
  local txt = string.format("FX %02d  %s", fx, name)
  local flags = 0
  if wgt.options and wgt.options.Color then
    flags = wgt.options.Color
  end
  local z = wgt.zone
  if z then
    lcd.drawText(z.x + 2, z.y + 2, txt, flags)
  else
    lcd.drawText(0, 0, txt, flags)
  end
end

return {
  name = app_name,
  options = options,
  create = create,
  update = update,
  refresh = refresh,
}
