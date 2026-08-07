-- TX16S RGB LED pack: 40 animated effects
-- Simulator: SB Mid/Down = run (Repeat ON), SB Up = off.lua
-- S1 selects effect 0..39 | S2 controls speed

local N = 40

local function clamp(x, a, b)
  if x < a then return a end
  if x > b then return b end
  return x
end

local function hsv(h, s, v)
  h = h % 360
  local c = v * s
  local x = c * (1 - math.abs((h / 60) % 2 - 1))
  local m = v - c
  local r, g, b = 0, 0, 0
  if h < 60 then r, g, b = c, x, 0
  elseif h < 120 then r, g, b = x, c, 0
  elseif h < 180 then r, g, b = 0, c, x
  elseif h < 240 then r, g, b = 0, x, c
  elseif h < 300 then r, g, b = x, 0, c
  else r, g, b = c, 0, x end
  return clamp(math.floor((r + m) * 255), 0, 255),
         clamp(math.floor((g + m) * 255), 0, 255),
         clamp(math.floor((b + m) * 255), 0, 255)
end

local function fill(r, g, b)
  for i = 0, LED_STRIP_LENGTH - 1 do
    setRGBLedColor(i, r, g, b)
  end
end

local function idx()
  local s1 = getValue("s1") or 0
  local i = math.floor((s1 + 1024) * N / 2048)
  return clamp(i, 0, N - 1)
end

local function spd()
  local s2 = getValue("s2") or 0
  return 0.5 + ((s2 + 1024) / 2048) * 3.5
end

local function t()
  return (getTime() or 0) * spd()
end

local function stick(name)
  return (getValue(name) or 0) / 1024
end

local function fx_rainbow_cycle()
  local hue = (t() / 2) % 360
  local r, g, b = hsv(hue, 1, 1)
  fill(r, g, b)
end

local function fx_rainbow_wave()
  local base = t() / 2
  local len = LED_STRIP_LENGTH
  for i = 0, len - 1 do
    local r, g, b = hsv((base + i * (360 / math.max(len, 1))) % 360, 1, 1)
    setRGBLedColor(i, r, g, b)
  end
end

local function fx_rainbow_chase()
  local len = LED_STRIP_LENGTH
  local pos = math.floor(t() / 8) % math.max(len, 1)
  fill(0, 0, 0)
  for k = 0, 2 do
    local i = (pos + k) % math.max(len, 1)
    local r, g, b = hsv((t() + k * 40) % 360, 1, 1)
    setRGBLedColor(i, r, g, b)
  end
end

local function pulse(hr, hg, hb)
  local a = (math.sin(t() / 25) + 1) * 0.5
  fill(math.floor(hr * a), math.floor(hg * a), math.floor(hb * a))
end

local function fx_pulse_red() pulse(255, 0, 0) end
local function fx_pulse_blu() pulse(0, 40, 255) end
local function fx_pulse_grn() pulse(0, 255, 40) end
local function fx_pulse_wht() pulse(255, 255, 255) end
local function fx_breathe_cy() pulse(0, 255, 220) end
local function fx_breathe_mg() pulse(255, 0, 180) end

local function fx_police()
  local on = (math.floor(t() / 12) % 2) == 0
  if on then fill(255, 0, 0) else fill(0, 0, 255) end
end

local function fx_ambulance()
  local ph = math.floor(t() / 10) % 4
  if ph == 0 or ph == 1 then fill(255, 0, 0)
  else fill(255, 255, 255) end
end

local function fx_strobe_w()
  if (math.floor(t() / 6) % 2) == 0 then fill(255, 255, 255) else fill(0, 0, 0) end
end

local function fx_strobe_r()
  if (math.floor(t() / 6) % 2) == 0 then fill(255, 0, 0) else fill(0, 0, 0) end
end

local function fx_fire()
  for i = 0, LED_STRIP_LENGTH - 1 do
    local f = (math.sin(t() / 7 + i * 1.7) + 1) * 0.5
    local r = 200 + math.floor(55 * f)
    local g = math.floor(80 * f)
    setRGBLedColor(i, r, g, 0)
  end
end

local function fx_ice()
  for i = 0, LED_STRIP_LENGTH - 1 do
    local f = (math.sin(t() / 15 + i) + 1) * 0.5
    setRGBLedColor(i, math.floor(80 * f), math.floor(180 * f), 255)
  end
end

local function fx_matrix()
  local len = math.max(LED_STRIP_LENGTH, 1)
  local head = math.floor(t() / 6) % len
  fill(0, 10, 0)
  for k = 0, 3 do
    local i = (head - k + len) % len
    setRGBLedColor(i, 0, 255 - k * 50, 0)
  end
end

local function fx_theater()
  local len = math.max(LED_STRIP_LENGTH, 1)
  local o = math.floor(t() / 10) % 3
  for i = 0, len - 1 do
    if (i % 3) == o then setRGBLedColor(i, 255, 160, 0) else setRGBLedColor(i, 0, 0, 0) end
  end
end

local function fx_comet()
  local len = math.max(LED_STRIP_LENGTH, 1)
  local head = math.floor(t() / 5) % len
  fill(0, 0, 0)
  for k = 0, 5 do
    local i = (head - k + len) % len
    local v = 255 - k * 40
    if v < 0 then v = 0 end
    setRGBLedColor(i, v, v, 255)
  end
end

local function fx_cylon()
  local len = math.max(LED_STRIP_LENGTH, 1)
  local cycle = (len - 1) * 2
  if cycle < 1 then cycle = 1 end
  local p = math.floor(t() / 6) % cycle
  local pos = p
  if p >= len then pos = cycle - p end
  fill(10, 0, 0)
  setRGBLedColor(pos, 255, 0, 0)
  if pos > 0 then setRGBLedColor(pos - 1, 80, 0, 0) end
  if pos < len - 1 then setRGBLedColor(pos + 1, 80, 0, 0) end
end

local function fx_dual_scan()
  local len = math.max(LED_STRIP_LENGTH, 1)
  local a = math.floor(t() / 7) % len
  local b = (len - 1) - a
  fill(0, 0, 20)
  setRGBLedColor(a, 0, 255, 255)
  setRGBLedColor(b, 255, 0, 255)
end

local function fx_sparkle()
  fill(0, 0, 40)
  local len = math.max(LED_STRIP_LENGTH, 1)
  local n = 1 + math.floor(len / 8)
  for k = 1, n do
    local i = math.floor((t() / 3 + k * 97)) % len
    setRGBLedColor(i, 255, 255, 255)
  end
end

local function fx_twinkle()
  for i = 0, LED_STRIP_LENGTH - 1 do
    local f = (math.sin(t() / 9 + i * 2.3) + 1) * 0.5
    local v = math.floor(40 + 215 * f * f)
    setRGBLedColor(i, v, v, math.floor(v * 0.9))
  end
end

local function fx_ocean()
  for i = 0, LED_STRIP_LENGTH - 1 do
    local f = (math.sin(t() / 20 + i * 0.8) + 1) * 0.5
    setRGBLedColor(i, 0, math.floor(60 + 80 * f), math.floor(120 + 135 * f))
  end
end

local function fx_sunset()
  local a = (math.sin(t() / 40) + 1) * 0.5
  fill(255, math.floor(40 + 100 * a), math.floor(20 * (1 - a)))
end

local function fx_aurora()
  for i = 0, LED_STRIP_LENGTH - 1 do
    local h = (120 + 80 * math.sin(t() / 30 + i * 0.5)) % 360
    local r, g, b = hsv(h, 0.8, 0.7 + 0.3 * math.sin(t() / 18 + i))
    setRGBLedColor(i, r, g, b)
  end
end

local function fx_thunder()
  local flash = (math.floor(t()) % 47) < 3
  if flash then fill(200, 200, 255) else fill(10, 10, 40) end
end

local function fx_heartbeat()
  local x = t() / 12
  local beat = math.max(math.sin(x), 0)
  beat = beat * beat
  local ph = math.floor(x / (2 * math.pi)) % 2
  if ph == 0 then beat = beat * 0.5 end
  fill(math.floor(255 * beat), 0, math.floor(30 * beat))
end

local function fx_knightr()
  fx_cylon()
end

local function fx_loading()
  local len = math.max(LED_STRIP_LENGTH, 1)
  local filln = math.floor((t() / 15) % (len + 1))
  for i = 0, len - 1 do
    if i < filln then setRGBLedColor(i, 0, 200, 255) else setRGBLedColor(i, 0, 0, 0) end
  end
end

local function fx_spinner()
  local len = math.max(LED_STRIP_LENGTH, 1)
  local pos = math.floor(t() / 4) % len
  fill(0, 0, 0)
  for k = 0, 2 do
    setRGBLedColor((pos + k * math.max(math.floor(len / 3), 1)) % len, 255, 120, 0)
  end
end

local function fx_halves()
  local len = LED_STRIP_LENGTH
  local mid = math.floor(len / 2)
  local swap = (math.floor(t() / 20) % 2) == 0
  for i = 0, len - 1 do
    local left = i < mid
    if swap then left = not left end
    if left then setRGBLedColor(i, 0, 255, 100) else setRGBLedColor(i, 255, 0, 80) end
  end
end

local function fx_vu_thr()
  local thr = (stick("thr") + 1) * 0.5
  local len = math.max(LED_STRIP_LENGTH, 1)
  local n = math.floor(thr * len + 0.5)
  for i = 0, len - 1 do
    if i < n then
      local h = i * 120 / len
      local r, g, b = hsv(h, 1, 1)
      setRGBLedColor(i, r, g, b)
    else
      setRGBLedColor(i, 0, 0, 0)
    end
  end
end

local function fx_ail_hue()
  local a = stick("ail")
  local h = (a + 1) * 180
  local r, g, b = hsv(h, 1, 1)
  fill(r, g, b)
end

local function fx_ele_bright()
  local e = (stick("ele") + 1) * 0.5
  fill(math.floor(40 + 215 * e), math.floor(40 + 100 * e), 255)
end

local function fx_rud_shift()
  local r = stick("rud")
  local len = math.max(LED_STRIP_LENGTH, 1)
  local shift = math.floor((r + 1) * 0.5 * (len - 1))
  fill(0, 0, 30)
  setRGBLedColor(shift, 255, 255, 0)
  if shift > 0 then setRGBLedColor(shift - 1, 100, 100, 0) end
  if shift < len - 1 then setRGBLedColor(shift + 1, 100, 100, 0) end
end

local function fx_stick_mag()
  local m = math.sqrt(stick("ail")^2 + stick("ele")^2)
  if m > 1 then m = 1 end
  local r, g, b = hsv(m * 300, 1, 0.3 + 0.7 * m)
  fill(r, g, b)
end

local function fx_thr_heat()
  local thr = (stick("thr") + 1) * 0.5
  local r, g, b = hsv(240 - thr * 240, 1, 0.4 + 0.6 * thr)
  fill(r, g, b)
end

local function fx_xy_color()
  local h = (stick("ail") + 1) * 180
  local v = 0.25 + 0.75 * ((stick("ele") + 1) * 0.5)
  local r, g, b = hsv(h, 1, v)
  fill(r, g, b)
end

local function fx_random_fade()
  local h = (t() / 50) % 360
  local v = 0.4 + 0.6 * ((math.sin(t() / 22) + 1) * 0.5)
  local r, g, b = hsv(h, 0.9, v)
  fill(r, g, b)
end

local function fx_xmas()
  local len = math.max(LED_STRIP_LENGTH, 1)
  local o = math.floor(t() / 15) % 2
  for i = 0, len - 1 do
    if ((i + o) % 2) == 0 then setRGBLedColor(i, 255, 0, 0) else setRGBLedColor(i, 0, 180, 0) end
  end
end

local EFFECTS = {
  fx_rainbow_cycle,   -- 0
  fx_rainbow_wave,    -- 1
  fx_rainbow_chase,   -- 2
  fx_pulse_red,       -- 3
  fx_pulse_blu,       -- 4
  fx_pulse_grn,       -- 5
  fx_pulse_wht,       -- 6
  fx_breathe_cy,      -- 7
  fx_breathe_mg,      -- 8
  fx_police,          -- 9
  fx_ambulance,       -- 10
  fx_strobe_w,        -- 11
  fx_strobe_r,        -- 12
  fx_fire,            -- 13
  fx_ice,             -- 14
  fx_matrix,          -- 15
  fx_theater,         -- 16
  fx_comet,           -- 17
  fx_cylon,           -- 18
  fx_dual_scan,       -- 19
  fx_sparkle,         -- 20
  fx_twinkle,         -- 21
  fx_ocean,           -- 22
  fx_sunset,          -- 23
  fx_aurora,          -- 24
  fx_thunder,         -- 25
  fx_heartbeat,       -- 26
  fx_knightr,         -- 27
  fx_loading,         -- 28
  fx_spinner,         -- 29
  fx_halves,          -- 30
  fx_vu_thr,          -- 31  thr reactive
  fx_ail_hue,         -- 32  ail reactive
  fx_ele_bright,      -- 33  ele reactive
  fx_rud_shift,       -- 34  rud reactive
  fx_stick_mag,       -- 35  stick magnitude
  fx_thr_heat,        -- 36  thr heat
  fx_xy_color,        -- 37  ail+ele XY
  fx_random_fade,     -- 38
  fx_xmas,            -- 39
}

local function init()
end

local function run()
  local i = idx()
  local fn = EFFECTS[i + 1]
  if fn then fn() else fill(0, 0, 0) end
  applyRGBLedColors()
end

local function background()
end

return { run = run, background = background, init = init }
