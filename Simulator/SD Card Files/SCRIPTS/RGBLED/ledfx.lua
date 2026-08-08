-- Simulator RGB LED pack: 80 effects
-- SB Mid/Down = run (Repeat ON) | SB Up = off.lua
-- S1 = brightness | S2 = speed (CCW=rev, mid=freeze, CW=fwd)
-- Effect index: GVAR1 "FX" (stepped by SCRIPTS/FUNCTIONS/fxnav.lua on btn 1/2)
-- Timing uses a phase accumulator so speed changes do not jump/flicker.

local N = 80
local fx = 0
local phase = 0
local last_t = nil
local bri = 1

local function clamp(x, a, b)
  if x < a then return a end
  if x > b then return b end
  return x
end

local function read_fx()
  if model and model.getGlobalVariable then
    local v = model.getGlobalVariable(0, 0)
    if v ~= nil then return v end
  end
  return fx
end

local function write_fx(v)
  fx = v
  if model and model.setGlobalVariable then
    model.setGlobalVariable(0, 0, v)
  end
end

local function wrap_fx(v)
  if v < 0 then return N - 1 end
  if v >= N then return 0 end
  return v
end

local function wrap360(h)
  h = h % 360
  if h < 0 then h = h + 360 end
  return h
end

local function hsv(h, s, v)
  h = wrap360(h)
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
  return clamp(math.floor((r + m) * 255 + 0.5), 0, 255),
         clamp(math.floor((g + m) * 255 + 0.5), 0, 255),
         clamp(math.floor((b + m) * 255 + 0.5), 0, 255)
end

local function led(i, r, g, b)
  setRGBLedColor(i,
    clamp(math.floor(r * bri + 0.5), 0, 255),
    clamp(math.floor(g * bri + 0.5), 0, 255),
    clamp(math.floor(b * bri + 0.5), 0, 255))
end

local function fill(r, g, b)
  for i = 0, LED_STRIP_LENGTH - 1 do led(i, r, g, b) end
end

local function L()
  return math.max(LED_STRIP_LENGTH or 2, 1)
end

local function stick(name)
  return (getValue(name) or 0) / 1024
end

local function update_controls()
  local v = read_fx()
  local w = wrap_fx(v)
  if w ~= v then write_fx(w) else fx = w end

  bri = clamp(((getValue("s1") or 0) + 1024) / 2048, 0, 1)

  local raw = (getValue("s2") or 0) / 1024
  if math.abs(raw) < 0.08 then raw = 0 end
  local rate = raw * 3.5

  local now = getTime() or 0
  if last_t == nil then last_t = now end
  local dt = now - last_t
  if dt < 0 then dt = 0 end
  if dt > 25 then dt = 25 end
  last_t = now
  phase = phase + dt * rate
end

local function p() return phase end
local function sin1(x) return (math.sin(x) + 1) * 0.5 end

-- ===== 0–9 rainbow / wash =====
local function fx0()
  local r, g, b = hsv(p() * 2, 1, 1)
  fill(r, g, b)
end

local function fx1()
  local len, base = L(), p() * 2
  for i = 0, len - 1 do
    local r, g, b = hsv(base + i * (360 / len), 1, 1)
    led(i, r, g, b)
  end
end

local function fx2()
  local len = L()
  local pos = math.floor(p() / 6) % len
  fill(0, 0, 0)
  for k = 0, math.min(2, len - 1) do
    local r, g, b = hsv(p() + k * 40, 1, 1)
    led((pos + k) % len, r, g, b)
  end
end

local function fx3()
  local a = sin1(p() / 20)
  local r1, g1, b1 = hsv(p(), 1, a)
  local r2, g2, b2 = hsv(p() + 180, 1, 1 - a)
  local len = L()
  for i = 0, len - 1 do
    if (i % 2) == 0 then led(i, r1, g1, b1) else led(i, r2, g2, b2) end
  end
end

local function fx4()
  local r, g, b = hsv(p() * 0.5, 0.6, 0.85)
  fill(r, g, b)
end

local function fx5()
  local len = L()
  for i = 0, len - 1 do
    local r, g, b = hsv(p() * 3 + i * 90, 1, 0.5 + 0.5 * math.sin(p() / 15 + i))
    led(i, r, g, b)
  end
end

local function fx6()
  local on = (math.floor(p() / 18) % 2) == 0
  local r, g, b = hsv(p(), 1, 1)
  if on then fill(r, g, b) else fill(0, 0, 0) end
end

local function fx7()
  local len = L()
  local mid = math.floor(len / 2)
  local r1, g1, b1 = hsv(p(), 1, 1)
  local r2, g2, b2 = hsv(p() + 120, 1, 1)
  for i = 0, len - 1 do
    if i < mid then led(i, r1, g1, b1) else led(i, r2, g2, b2) end
  end
end

local function fx8()
  local v = 0.35 + 0.65 * sin1(p() / 25)
  local r, g, b = hsv(p() * 1.5, 1, v)
  fill(r, g, b)
end

local function fx9()
  local len = L()
  for i = 0, len - 1 do
    local f = sin1(p() / 12 + i * 1.2)
    led(i, math.floor(255 * f), math.floor(40 * f), math.floor(180 * (1 - f)))
  end
end

-- ===== 10–19 pulse / breathe =====
local function pulse(hr, hg, hb, slow)
  local a = sin1(p() / (slow or 22))
  fill(math.floor(hr * a), math.floor(hg * a), math.floor(hb * a))
end

local function fx10() pulse(255, 0, 0) end
local function fx11() pulse(0, 50, 255) end
local function fx12() pulse(0, 255, 60) end
local function fx13() pulse(255, 255, 255) end
local function fx14() pulse(0, 255, 220) end
local function fx15() pulse(255, 0, 180) end
local function fx16() pulse(255, 140, 0, 30) end
local function fx17() pulse(180, 100, 255, 28) end

local function fx18()
  local a = math.max(math.sin(p() / 10), 0)
  a = a * a
  fill(math.floor(255 * a), 0, math.floor(40 * a))
end

local function fx19()
  local a = sin1(p() / 16)
  local b = sin1(p() / 16 + 2.1)
  local len = L()
  for i = 0, len - 1 do
    if (i % 2) == 0 then led(i, math.floor(255 * a), 0, math.floor(80 * a))
    else led(i, 0, math.floor(200 * b), math.floor(255 * b)) end
  end
end

-- ===== 20–29 alerts / strobes =====
local function fx20()
  if (math.floor(p() / 10) % 2) == 0 then fill(255, 0, 0) else fill(0, 0, 255) end
end

local function fx21()
  local ph = math.floor(p() / 8) % 4
  if ph < 2 then fill(255, 0, 0) else fill(255, 255, 255) end
end

local function fx22()
  if (math.floor(p() / 5) % 2) == 0 then fill(255, 255, 255) else fill(0, 0, 0) end
end

local function fx23()
  if (math.floor(p() / 5) % 2) == 0 then fill(255, 0, 0) else fill(0, 0, 0) end
end

local function fx24()
  local ph = math.floor(p() / 7) % 3
  if ph == 0 then fill(255, 0, 0)
  elseif ph == 1 then fill(255, 255, 255)
  else fill(0, 40, 255) end
end

local function fx25()
  local flash = (math.floor(p()) % 55) < 4
  if flash then fill(220, 220, 255) else fill(8, 8, 28) end
end

local function fx26()
  local ph = math.floor(p() / 6) % 6
  if ph == 0 or ph == 2 then fill(255, 180, 0)
  elseif ph == 1 or ph == 3 then fill(0, 0, 0)
  else fill(255, 40, 0) end
end

local function fx27()
  local on = (math.floor(p() / 4) % 2) == 0
  local len = L()
  fill(0, 0, 0)
  if on then led(0, 255, 0, 0) else led(len - 1, 0, 0, 255) end
end

local function fx28()
  local ph = math.floor(p() / 9) % 2
  fill(ph == 0 and 0 or 255, ph == 0 and 255 or 0, 0)
end

local function fx29()
  local a = (math.floor(p() / 3) % 2) == 0 and 255 or 0
  fill(a, a, 0)
end

-- ===== 30–39 nature / heat =====
local function fx30()
  for i = 0, L() - 1 do
    local f = sin1(p() / 8 + i * 1.7)
    led(i, 200 + math.floor(55 * f), math.floor(90 * f), 0)
  end
end

local function fx31()
  for i = 0, L() - 1 do
    local f = sin1(p() / 14 + i)
    led(i, math.floor(70 * f), math.floor(170 * f), 255)
  end
end

local function fx32()
  for i = 0, L() - 1 do
    local f = sin1(p() / 18 + i * 0.8)
    led(i, 0, math.floor(50 + 90 * f), math.floor(110 + 140 * f))
  end
end

local function fx33()
  local a = sin1(p() / 35)
  fill(255, math.floor(50 + 110 * a), math.floor(15 * (1 - a)))
end

local function fx34()
  for i = 0, L() - 1 do
    local h = 110 + 70 * math.sin(p() / 28 + i * 0.5)
    local r, g, b = hsv(h, 0.85, 0.55 + 0.45 * math.sin(p() / 16 + i))
    led(i, r, g, b)
  end
end

local function fx35()
  for i = 0, L() - 1 do
    local f = 0.55 + 0.45 * math.sin(p() / 5 + i * 2.7)
    led(i, math.floor(255 * f), math.floor(150 * f), 25)
  end
end

local function fx36()
  for i = 0, L() - 1 do
    local f = sin1(p() / 11 + i * 0.9)
    led(i, math.floor(40 * f), 255, math.floor(60 * f))
  end
end

local function fx37()
  local len = L()
  local o = math.floor(p() / 14) % 2
  for i = 0, len - 1 do
    if ((i + o) % 2) == 0 then led(i, 255, 0, 0) else led(i, 0, 180, 0) end
  end
end

local function fx38()
  for i = 0, L() - 1 do
    local f = sin1(p() / 20 + i * 2)
    led(i, math.floor(255 * f), math.floor(200 * f), math.floor(80 * f))
  end
end

local function fx39()
  local v = 0.3 + 0.7 * sin1(p() / 40)
  local r, g, b = hsv(200 + 40 * math.sin(p() / 50), 0.4, v)
  fill(r, g, b)
end

-- ===== 40–49 scanners / motion =====
local function fx40()
  local len = L()
  local cycle = math.max((len - 1) * 2, 1)
  local raw = math.floor(p() / 5) % cycle
  local pos = raw
  if raw >= len then pos = cycle - raw end
  fill(12, 0, 0)
  led(pos, 255, 0, 0)
  if pos > 0 then led(pos - 1, 70, 0, 0) end
  if pos < len - 1 then led(pos + 1, 70, 0, 0) end
end

local function fx41()
  local len = L()
  local a = math.floor(p() / 6) % len
  fill(0, 0, 18)
  led(a, 0, 255, 255)
  led((len - 1) - a, 255, 0, 255)
end

local function fx42()
  local len = L()
  local head = math.floor(p() / 4) % len
  fill(0, 0, 0)
  for k = 0, math.min(4, len - 1) do
    local v = 255 - k * 45
    if v < 0 then v = 0 end
    led((head - k + len) % len, v, v, 255)
  end
end

local function fx43()
  local len = L()
  local o = math.floor(p() / 9) % 3
  for i = 0, len - 1 do
    if (i % 3) == o then led(i, 255, 160, 0) else led(i, 0, 0, 0) end
  end
end

local function fx44()
  local len = L()
  local head = math.floor(p() / 5) % len
  fill(0, 12, 0)
  for k = 0, math.min(3, len - 1) do
    led((head - k + len) % len, 0, 255 - k * 55, 0)
  end
end

local function fx45()
  local len = L()
  local pos = math.floor(p() / 4) % len
  fill(0, 0, 0)
  local step = math.max(math.floor(len / 3), 1)
  for k = 0, 2 do led((pos + k * step) % len, 255, 120, 0) end
end

local function fx46()
  local len = L()
  local n = math.floor((p() / 12) % (len + 1))
  for i = 0, len - 1 do
    if i < n then led(i, 0, 200, 255) else led(i, 0, 0, 0) end
  end
end

local function fx47()
  local len = L()
  local pos = math.floor(p() / 5) % len
  fill(20, 0, 15)
  led(pos, 255, 20, 120)
  led((pos + 1) % len, 160, 0, 70)
end

local function fx48()
  local len = L()
  local a = math.floor(p() / 8) % len
  fill(0, 0, 0)
  led(a, 255, 255, 0)
  led((a + math.max(math.floor(len / 2), 1)) % len, 0, 255, 180)
end

local function fx49()
  local len = L()
  local w = 1 + math.floor(sin1(p() / 20) * (len - 1))
  fill(0, 0, 30)
  for i = 0, w - 1 do
    local r, g, b = hsv(200 + i * 10, 1, 1)
    led(i, r, g, b)
  end
end

-- ===== 50–59 sparkle / shimmer =====
local function fx50()
  fill(0, 0, 35)
  local len = L()
  local n = 1 + math.floor(len / 6)
  for k = 1, n do
    local i = math.floor(math.abs(p() / 4 + k * 37)) % len
    led(i, 255, 255, 255)
  end
end

local function fx51()
  for i = 0, L() - 1 do
    local f = sin1(p() / 10 + i * 2.4)
    local v = math.floor(30 + 225 * f * f)
    led(i, v, v, math.floor(v * 0.85))
  end
end

local function fx52()
  fill(10, 0, 25)
  local len = L()
  local i = math.floor(math.abs(p() / 3)) % len
  local r, g, b = hsv(p() * 4, 1, 1)
  led(i, r, g, b)
end

local function fx53()
  for i = 0, L() - 1 do
    local f = sin1(p() / 7 + i * 3.1)
    led(i, math.floor(255 * f), math.floor(220 * f), math.floor(120 * f))
  end
end

local function fx54()
  local len = L()
  fill(0, 0, 0)
  local i = math.floor(math.abs(p() / 2.5)) % len
  led(i, 255, 255, 255)
end

local function fx55()
  for i = 0, L() - 1 do
    local h = wrap360(p() * 5 + i * 50)
    local v = 0.2 + 0.8 * sin1(p() / 9 + i)
    local r, g, b = hsv(h, 1, v)
    led(i, r, g, b)
  end
end

local function fx56()
  local a = sin1(p() / 6)
  fill(math.floor(255 * a), math.floor(180 * a), math.floor(40 * a))
end

local function fx57()
  local len = L()
  for i = 0, len - 1 do
    local on = (math.floor(p() / 8 + i) % 2) == 0
    if on then led(i, 255, 255, 200) else led(i, 20, 20, 40) end
  end
end

local function fx58()
  for i = 0, L() - 1 do
    local f = sin1(p() / 13 + i * 1.5)
    led(i, math.floor(100 * f), math.floor(40 * f), math.floor(255 * f))
  end
end

local function fx59()
  local v = sin1(p() / 5)
  local len = L()
  fill(0, 0, 0)
  led(0, math.floor(255 * v), math.floor(255 * v), math.floor(255 * v))
  if len > 1 then
    led(len - 1, math.floor(255 * (1 - v)), math.floor(255 * (1 - v)), math.floor(255 * (1 - v)))
  end
end

-- ===== 60–69 patterns / geometry =====
local function fx60()
  local len = L()
  local mid = math.floor(len / 2)
  local swap = (math.floor(p() / 18) % 2) == 0
  for i = 0, len - 1 do
    local left = i < mid
    if swap then left = not left end
    if left then led(i, 0, 255, 100) else led(i, 255, 0, 80) end
  end
end

local function fx61()
  local ph = math.floor(p() / 12) % 4
  if ph == 0 then fill(255, 0, 0)
  elseif ph == 1 then fill(0, 255, 0)
  elseif ph == 2 then fill(0, 0, 255)
  else fill(255, 255, 0) end
end

local function fx62()
  local len = L()
  for i = 0, len - 1 do
    local r, g, b = hsv(i * (360 / len) + p(), 1, 1)
    led(i, r, g, b)
  end
end

local function fx63()
  local a = sin1(p() / 15)
  fill(math.floor(255 * a), math.floor(80 * (1 - a)), math.floor(255 * (1 - a)))
end

local function fx64()
  local len = L()
  local edge = (math.floor(p() / 10) % 2) == 0
  fill(0, 0, 0)
  if edge then led(0, 0, 255, 180) else led(len - 1, 255, 80, 0) end
end

local function fx65()
  for i = 0, L() - 1 do
    local f = sin1(p() / 10 + i * math.pi)
    led(i, math.floor(255 * f), 0, math.floor(255 * (1 - f)))
  end
end

local function fx66()
  local h = wrap360(p() * 0.8)
  local r1, g1, b1 = hsv(h, 1, 1)
  local r2, g2, b2 = hsv(h + 180, 1, 1)
  local len = L()
  for i = 0, len - 1 do
    if i < len / 2 then led(i, r1, g1, b1) else led(i, r2, g2, b2) end
  end
end

local function fx67()
  local t = p() / 20
  fill(math.floor(127 + 127 * math.sin(t)),
       math.floor(127 + 127 * math.sin(t + 2.1)),
       math.floor(127 + 127 * math.sin(t + 4.2)))
end

local function fx68()
  local len = L()
  local pos = math.floor(sin1(p() / 14) * (len - 1) + 0.5)
  fill(0, 0, 25)
  led(pos, 255, 255, 255)
end

local function fx69()
  local a = (math.floor(p() / 16) % 2) == 0
  local len = L()
  for i = 0, len - 1 do
    local on = ((i % 2) == 0) == a
    if on then led(i, 255, 255, 255) else led(i, 0, 0, 80) end
  end
end

-- ===== 70–79 stick reactive + extras =====
local function fx70()
  local thr = (stick("thr") + 1) * 0.5
  local len = L()
  local n = math.floor(thr * len + 0.5)
  for i = 0, len - 1 do
    if i < n then
      local r, g, b = hsv(i * 120 / len, 1, 1)
      led(i, r, g, b)
    else
      led(i, 0, 0, 0)
    end
  end
end

local function fx71()
  local r, g, b = hsv((stick("ail") + 1) * 180, 1, 1)
  fill(r, g, b)
end

local function fx72()
  local e = (stick("ele") + 1) * 0.5
  fill(math.floor(40 + 215 * e), math.floor(40 + 100 * e), 255)
end

local function fx73()
  local r = stick("rud")
  local len = L()
  local shift = math.floor((r + 1) * 0.5 * (len - 1) + 0.5)
  fill(0, 0, 28)
  led(shift, 255, 255, 0)
end

local function fx74()
  local m = math.sqrt(stick("ail")^2 + stick("ele")^2)
  if m > 1 then m = 1 end
  local r, g, b = hsv(m * 300, 1, 0.25 + 0.75 * m)
  fill(r, g, b)
end

local function fx75()
  local thr = (stick("thr") + 1) * 0.5
  local r, g, b = hsv(240 - thr * 240, 1, 0.35 + 0.65 * thr)
  fill(r, g, b)
end

local function fx76()
  local h = (stick("ail") + 1) * 180
  local v = 0.2 + 0.8 * ((stick("ele") + 1) * 0.5)
  local r, g, b = hsv(h, 1, v)
  fill(r, g, b)
end

local function fx77()
  local thr = (stick("thr") + 1) * 0.5
  local rud = stick("rud")
  local len = L()
  local shift = math.floor((rud + 1) * 0.5 * (len - 1) + 0.5)
  fill(0, 0, 0)
  local r, g, b = hsv(thr * 120, 1, 0.4 + 0.6 * thr)
  led(shift, r, g, b)
end

local function fx78()
  local h = wrap360(p() * 0.7)
  local v = 0.35 + 0.65 * sin1(p() / 24)
  local r, g, b = hsv(h, 0.9, v)
  fill(r, g, b)
end

local function fx79()
  local len = L()
  local o = math.floor(p() / 11) % 2
  for i = 0, len - 1 do
    if ((i + o) % 2) == 0 then led(i, 255, 40, 0) else led(i, 0, 120, 255) end
  end
end

local EFFECTS = {
  fx0, fx1, fx2, fx3, fx4, fx5, fx6, fx7, fx8, fx9,
  fx10, fx11, fx12, fx13, fx14, fx15, fx16, fx17, fx18, fx19,
  fx20, fx21, fx22, fx23, fx24, fx25, fx26, fx27, fx28, fx29,
  fx30, fx31, fx32, fx33, fx34, fx35, fx36, fx37, fx38, fx39,
  fx40, fx41, fx42, fx43, fx44, fx45, fx46, fx47, fx48, fx49,
  fx50, fx51, fx52, fx53, fx54, fx55, fx56, fx57, fx58, fx59,
  fx60, fx61, fx62, fx63, fx64, fx65, fx66, fx67, fx68, fx69,
  fx70, fx71, fx72, fx73, fx74, fx75, fx76, fx77, fx78, fx79,
}

local function init()
  last_t = nil
  fx = wrap_fx(read_fx())
  write_fx(fx)
end

local function run()
  update_controls()
  local fn = EFFECTS[fx + 1]
  if fn then fn() else fill(0, 0, 0) end
  applyRGBLedColors()
end

local function background()
end

return { run = run, background = background, init = init }
