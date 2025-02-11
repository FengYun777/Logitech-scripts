-- Constants for the first configuration
local keyboard1 = 5
local start1 = true

-- Constants for the second configuration
local keyboard2 = 4
local start2 = true

-- Enable primary mouse button events
EnablePrimaryMouseButtonEvents(true)

-- Function to handle events
function OnEvent(event, arg)
    -- First configuration: Left mouse button, Mouse 5 button
    if (event == "MOUSE_BUTTON_PRESSED" and start1 and arg == keyboard1) then
        repeat
            PressMouseButton(1)
            Sleep(math.random(30, 60))
            ReleaseMouseButton(1)
            Sleep(math.random(20, 60))
        until not IsMouseButtonPressed(keyboard1)
    end

    -- Second configuration: Right mouse button, Mouse 4 button
    if (event == "MOUSE_BUTTON_PRESSED" and start2 and arg == keyboard2) then
        repeat
            PressMouseButton(3)
            Sleep(math.random(14, 20))
            ReleaseMouseButton(3)
            Sleep(math.random(20, 30))
        until not IsMouseButtonPressed(keyboard2)
    end
end