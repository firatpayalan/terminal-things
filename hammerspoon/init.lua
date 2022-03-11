local hyper = {"alt", "cmd", "ctrl"}

hs.loadSpoon("MiroWindowsManager")
hs.window.animationDuration = 0.3
spoon.MiroWindowsManager:bindHotkeys({
  up = {hyper, "up"},
  right = {hyper, "right"},
  down = {hyper, "down"},
  left = {hyper, "left"},
  fullscreen = {hyper, "f"},
  nextscreen = {hyper, "n"}
})

hs.loadSpoon('ClipboardTool')
placid = {'cmd', 'shift'}
spoon.ClipboardTool.hist_size = 100
spoon.ClipboardTool.show_in_menubar = false
spoon.ClipboardTool:start()
spoon.ClipboardTool:bindHotkeys({
  toggle_clipboard = {placid, 'V'}
})
