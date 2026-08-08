-- StaticRain: rainbow along LED strip
-- S1 = brightness | S2 = speed (CCW=rev, mid=freeze, CW=fwd)

local phase = 0
local last_t = nil

local function clamp(x, a, b)
  if x < a then return a end
  if x > b then return b end
  return x
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

local function init()
  last_t = nil
end

local function run()
  local bri = clamp(((getValue("s1") or 0) + 1024) / 2048, 0, 1)
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

  local len = math.max(LED_STRIP_LENGTH or 2, 1)
  for i = 0, len - 1 do
    local r, g, b = hsv(phase + i * (360 / len), 1, 1)
    setRGBLedColor(i,
      clamp(math.floor(r * bri + 0.5), 0, 255),
      clamp(math.floor(g * bri + 0.5), 0, 255),
      clamp(math.floor(b * bri + 0.5), 0, 255))
  end
  applyRGBLedColors()
end

local function background()
end

return { run = run, background = background, init = init }
