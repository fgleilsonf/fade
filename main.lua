display.setDefault("background", 255, 255, 255, 1)

local centerWidth = display.contentWidth / 2

local title = display.newText("Estágio 1", centerWidth, 50, native.systemFontBold, 40)
title:setTextColor(0, 0, 0)

local imageProfile = display.newImage("images/avatar.jpg")
imageProfile.x = 120
imageProfile.y = 190

local name = display.newText("Gleilson Ferreira", centerWidth, 120, native.systemFontBold, 30)
name:setTextColor(0, 0, 0)

local titleImage1 = display.newText("Fácil / Médio", 130, 350, native.systemFontBold, 30)
titleImage1:setTextColor(0, 0, 0)

local imageGame1 = display.newImage("images/game2.jpg")
imageGame1.x = 340
imageGame1.y = 540

local titleImage2 = display.newText("Médio / Difícil", 140, 740, native.systemFontBold, 30)
titleImage2:setTextColor(0, 0, 0)

local imageGame2 = display.newImage("images/game1.jpg")
imageGame2.x = 280
imageGame2.y = 940

local playButton = display.newImage("images/play.png")
playButton.x = display.contentWidth / 2
playButton.y = display.contentHeight - 80

imageGame1.alpha = 0
imageGame2.alpha = 0
titleImage1.alpha = 0
titleImage2.alpha = 0

local showImage = 0
function playButton:tap(event)
	showImage = showImage + 1

	if showImage == 1 then 
		transition.to(imageGame1, {time=3000, alpha = 1})
		transition.to(titleImage1, {time=3000, alpha = 1})
	elseif showImage == 2 then 
		transition.to(imageGame2, {time=3000, alpha = 1})
		transition.to(titleImage2, {time=3000, alpha = 1})

		playButton.alpha = 0
	end
end

playButton:addEventListener("tap", playButton)