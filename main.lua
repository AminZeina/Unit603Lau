-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by Amin Zeina
-- Created on Mar 2018
--
-- Shows what movie the user can watch
-----------------------------------------------------------------------------------------


local age

local instructionsAge = display.newText( 'Enter your age:', 443, 200, native.systemFont, 128 )
instructionsAge.id = "instructions for age"

local ageTextField = native.newTextField( 1150 , 200, 500, 128 )
ageTextField.id = "enter age"

local enterButton = display.newImageRect( './assets/sprites/clickButton.png', 650, 300 )
enterButton.x = display.contentCenterX
enterButton.y = 500
enterButton.id = "Enter Button"

function onEnterClicked( event )
	-- figures out if, based on age and day, what movies they can watch alone
	age = tonumber(ageTextField.text)
	
	if age > 17 then 
		local canWatchRText = display.newText( 'You can watch an R rated movie alone!', display.contentCenterX, 800, native.systemFont, 114 )
	elseif age > 13 then
		local canWatchPGText = display.newText( 'You can watch a PG rated movie alone!', display.contentCenterX, 800, native.systemFont, 114 )
	else
		local canWatchGText = display.newText( 'You can watch a G rated movie alone!', display.contentCenterX, 800, native.systemFont, 114 )
	end
end

enterButton:addEventListener( 'touch', onEnterClicked)