keyboard = 5
------------------------------------------
start = true
EnablePrimaryMouseButtonEvents(true)
function OnEvent(event, arg)
x = 0
y = 0


  if (event == "MOUSE_BUTTON_PRESSED" and start and arg == keyboard) then
     PressMouseButton(1)
     Sleep(math.random(30,60))
     ReleaseMouseButton(1)
     Sleep(math.random(20,60))
     repeat
    	  PressMouseButton(1)
    	  Sleep(math.random(30,60))  
    	  ReleaseMouseButton(1)
    	  Sleep(math.random(20,60))
     until not IsMouseButtonPressed(keyboard)	
  end

end