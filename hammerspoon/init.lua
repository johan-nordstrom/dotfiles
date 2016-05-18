local application = require "hs.application"
local layout = require "hs.application"
local grid = require "hs.grid"
local tiling = require "hs.tiling"
local hotkey = require "hs.hotkey"
local appfinder = require   "hs.appfinder"
local tabs = require "hs.tabs"
local screen = require "hs.screen"
local window = require "hs.window"
local winmod = require "winmod"
-- local screenwatcher = require "hs.screenwatcher"
local window =  window.focusedWindow()

-- Helper Functions
function reload_config(files)
  hs.reload()
hs.notify.new({
      title='Hammerspoon',
        informativeText='Config loaded'
    }):send()
end

monmbp = { w = 1920, h=1200}
mondell = { w = 3440, h=1440}
hs.window.animationDuration = 0 -- disable window animations
-- grid.GRIDWIDTH = 3
-- grid.GRIDHEIGHT = 1
-- local gw = grid.GRIDWIDTH
-- local gh = grid.GRIDHEIGHT
-- local goMiddle = {x = gw/4, y = gh/4, w = gw/2, h = gh/2}
-- local goRight = {x = gw/2, y = 0, w = gw/2, h = gh}
-- local goTopLeft = {x = 0, y = 0, w = gw/2, h = gh/2}
-- local goTopRight = {x = gw/2, y = 0, w = gw/2, h = gh/2}
-- local goBottomLeft = {x = 0, y = gh/2, w = gw/2, h = gh/2}
-- local goBottomRight = {x = gw/2, y = gh/2, w = gw/2, h = gh/2}
-- local gobig = {x = 0, y = 0, w = gw, h = gh}
-- local goLeft = {x = 0, y = 0, w = gw/2, h = gh}

-- Hotkeys
local mash = {"cmd", "shift"}
local ctrlmash = {"cmd", "ctrl", "shift"}
local hyp = {"alt", "cmd", "shift", "ctrl"}

-- Hyper, Focusing/executing
hotkey.bind(hyp, 'b', function() application.launchOrFocus('Google Chrome') end)
hotkey.bind(hyp, 't', function() application.launchOrFocus('Textual') end )
hotkey.bind(hyp, 'g', function() application.launchOrFocus('Tower') end )
hotkey.bind(hyp, 'n', function() application.launchOrFocus('Notes') end )
hotkey.bind(hyp, 'v', function() application.launchOrFocus('Jump Desktop') end)
hotkey.bind(hyp, 'm', function() application.launchOrFocus('Spotify') end)
hotkey.bind(hyp, 'f', function () application.launchOrFocus("Path Finder") end)
hotkey.bind(hyp, 'r', reload_config)

-- Cmd+Ctrl, basic window manipulation
-- use push instead
-- hotkey.bind(mash2, 'h', grid.pushWindowLeft)
-- hotkey.bind(mash2, 'l', gridset(goRight))
-- hotkey.bind(mash2, 'f', gridset(goBig))

-- Cmd+Ctrl+Shift
-- hotkey.bind(mash3, 'h', gridset(goTopLeft))
-- hotkey.bind(mash3, 'j', gridset(goTopRight))
-- hotkey.bind(mash3, 'k', gridset(goBottomLeft))
-- hotkey.bind(mash3, 'l', gridset(goBottomRight))

-- Hotkeys to trigger defined layouts
-- hs.hotkey.bind(hyp, '1', function() layout.apply(macbook_display) end)
-- hs.hotkey.bind(hyp, '2', function() layout.apply(external_display) end)
-- Defines for screen watcher
-- border = nil

-- function drawBorder()
--     if border then
--         border:delete()
--     end

--     local win = hs.window.focusedWindow()
--     if win == nil then return end

--     local f = win:frame()
--     local fx = f.x - 2
--     local fy = f.y - 2
--     local fw = f.w + 4
--     local fh = f.h + 4

--     border = hs.drawing.rectangle(hs.geometry.rect(fx, fy, fw, fh))
--     border:setStrokeWidth(3)
--     border:setStrokeColor({["red"]=0.75,["blue"]=0.14,["green"]=0.83,["alpha"]=0.80})
--     border:setRoundedRectRadii(5.0, 5.0)
--     border:setStroke(true):setFill(false)
--     border:setLevel("floating")
--     border:show()
-- end

-- drawBorder()
-- Window Hints
hs.hotkey.bind(hyp, '.', hs.hints.windowHints)

-- windows = hs.window.filter.new(nil)
-- windows:subscribe(hs.window.filter.windowFocused, function () drawBorder() end)
-- windows:subscribe(hs.window.filter.windowUnfocused, function () drawBorder() end)
-- windows:subscribe(hs.window.filter.windowMoved, function () drawBorder() end)
-- resize windows
--hotkey.bind(mash, 'Y', hs.grid.resizeWindowThinner)
--hotkey.bind(mash, 'U', hs.grid.resizeWindowShorter)
--hotkey.bind(mash, 'I', hs.grid.resizeWindowTaller)
--hotkey.bind(mash, 'O', hs.grid.resizeWindowWider)
-- Settings
-- Start, reload config on update
--screenwatcher.subscribe(setlayouts)
hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reload_config):start()
-- bindKey('1', function()
  -- hs.layout.apply({
    -- {"Firefox", nil, screen, positions.left50,         nil, nil},
--    {"Mail",    nil, screen, positions.upper50Right50, nil, nil},
--    {"Slack",   nil, screen, positions.lower50Right50, nil, nil}
--  })
--end)
-- TODO: Change window layout on screen/resolution change
