local clickKey = 5
local isRunning = true

EnablePrimaryMouseButtonEvents(true)

function OnEvent(event, arg)
  if event == "MOUSE_BUTTON_PRESSED" and isRunning and arg == clickKey then
    ClickMouse()
  end
end

function ClickMouse()
  PressMouseButton(1)
  RandomSleep(30, 60)
  ReleaseMouseButton(1)
  RandomSleep(20, 60)
  repeat
    PressMouseButton(1)
    RandomSleep(30, 60)  
    ReleaseMouseButton(1)
    RandomSleep(20, 60)
  until not IsMouseButtonPressed(clickKey)	
end

function RandomSleep(min, max)
  Sleep(math.random(min, max))
end
