-- Sapphire fill with S1 brightness and S2 pulse speed
-- S2 mid = steady | away from mid = pulse (direction = rate)

local phase = 0
local last_t = nil

local function clamp(x, a, b)
  if x < a then return a end
  if x > b then return b end
  return x
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

  local a = 1
  if rate ~= 0 then
    a = (math.sin(phase / 18) + 1) * 0.5
    a = 0.25 + 0.75 * a
  end
  local v = bri * a
  local g = clamp(math.floor(255 * v + 0.5), 0, 255)
  local b = g
  for i = 0, LED_STRIP_LENGTH - 1 do
    setRGBLedColor(i, 0, g, b)
  end
  applyRGBLedColors()
end

local function background()
end

return { run = run, background = background, init = init }
