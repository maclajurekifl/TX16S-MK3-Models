-- Simulator LED effect navigator (always-on function script)
-- SW1 / btn 1 = previous effect | SW2 / btn 2 = next effect
-- Writes GVAR1 (index 0, name "FX") for ledfx.lua + LedFx widget

local N = 80
local prev1 = false
local prev2 = false
local sw1_idx = nil
local sw2_idx = nil

local function wrap(v)
  if v < 0 then return N - 1 end
  if v >= N then return 0 end
  return v
end

local function get_fx()
  if model and model.getGlobalVariable then
    return model.getGlobalVariable(0, 0) or 0
  end
  return 0
end

local function set_fx(v)
  if model and model.setGlobalVariable then
    model.setGlobalVariable(0, 0, v)
  end
end

local function pressed(idx, names)
  if idx ~= nil and getSwitchValue then
    local ok, val = pcall(getSwitchValue, idx)
    if ok and val then return true end
  end
  for i = 1, #names do
    local v = getValue(names[i])
    if v ~= nil and v > 200 then return true end
  end
  return false
end

local function init()
  prev1, prev2 = false, false
  if getSwitchIndex then
    sw1_idx = getSwitchIndex("SW12") or getSwitchIndex("SW1↓") or getSwitchIndex("SW1")
    sw2_idx = getSwitchIndex("SW22") or getSwitchIndex("SW2↓") or getSwitchIndex("SW2")
  end
  set_fx(wrap(get_fx()))
end

local function run()
  local s1 = pressed(sw1_idx, { "sw1", "SW1" })
  local s2 = pressed(sw2_idx, { "sw2", "SW2" })
  local fx = wrap(get_fx())

  if s1 and not prev1 then
    fx = wrap(fx - 1)
    set_fx(fx)
  end
  if s2 and not prev2 then
    fx = wrap(fx + 1)
    set_fx(fx)
  end

  prev1, prev2 = s1, s2
end

local function background()
end

return { run = run, background = background, init = init }
