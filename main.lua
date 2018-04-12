-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- creted on: kangmin
-- creted by: April 09
-----------------------------------------------------------------------------------------

local firstText = display.newText( "first number", 500, 200, systemFont, 80)
firstText:setFillColor( 5, 2, 0)

local firstTextField = native.newTextField( display.contentCenterX, display.contentCenterY - 550, 500, 150)
firstTextField.id = "first TextField"

local secondText = display.newText( "second number", 500, 400, systemFont, 80)

local secondTextField = native.newTextField( display.contentCenterX, display.contentCenterY - 370, 500, 150)

local comspeak = display.newText( "...", display.contentCenterX, display.contentCenterY + 450, 700, 150)


local calculateButton = display.newImageRect( "./assets/sprites/enterButton.png",  400, 157 )
calculateButton.x = ( display.contentCenterX - 0)
calculateButton.y = (display.contentCenterY + 50)
calculateButton.id = "calculate button"

local function calculateButtonFunction( event )
    local looping
    local answer = 0
    local test = 1
    local answer1 = tonumber(secondTextField.text)
    local answer2 = tonumber(firstTextField.text)

	for looping = test , answer1 do
		answer = answer + answer2	
	end
	comspeak.text = ""..answer..""
end

calculateButton:addEventListener( "touch", calculateButtonFunction)