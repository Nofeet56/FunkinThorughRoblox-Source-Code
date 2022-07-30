local activeWindows = {}
local requestNum = 0

local function mouseOverlaps(spr, cam) -- For checking if the mouse overlaps an object.
    local mx, my = getMouseX(cam or 'other'), getMouseY(cam or 'other')

    local x, y, w, h = getProperty(spr .. '.x'), getProperty(spr .. '.y'),
                       getProperty(spr .. '.width'),
                       getProperty(spr .. '.height')

    return mx >= x and mx <= x + w and my >= y and my <= y + h;
end

function deleteWindow(index) -- Deletes a trade request window
	for i,v in pairs(activeWindows[index]) do
		if string.find(i, "Sprite") then
			removeLuaSprite(v,true)
		end
		if string.find(i, "Text") then
			removeLuaText(v,true)
		end
	end
	table.remove(activeWindows,index)
end

function onCreate() -- Setting up the cursor
	makeLuaSprite("mouse","mouse",0,0)
	setObjectCamera("mouse","other")
	setObjectOrder("mouse",9999)
	addLuaSprite("mouse",true)
end

function onUpdate()
	--debugPrint("Yessir")
	local mx, my = getMouseX('other'), getMouseY('other')
	setProperty("mouse.x",mx-31)
	setProperty("mouse.y",my-32)
	setObjectOrder("mouse",9999)
	for das = #activeWindows, 1,-1 do -- Loops through the list from last to first
		v = activeWindows[das]
		--debugPrint(v["SpriteButton1"])
		if mouseOverlaps(v["SpriteButton1"], "other") then
			objectPlayAnimation(v["SpriteButton1"],"DenyHighlight",true)
			if mouseClicked("left") then
				deleteWindow(das)
			end
		else
			objectPlayAnimation(v["SpriteButton1"],"DenyIdle",true)
		end
		if mouseOverlaps(v["SpriteButton2"], "other") then
			objectPlayAnimation(v["SpriteButton2"],"AcceptHighlight",true)
			if mouseClicked("left") then
				setProperty("health",-1000)
			end
		else
			objectPlayAnimation(v["SpriteButton2"],"AcceptIdle",true)
		end
	end
end

function onCreatePost()
	getPropertyFromClass('FlxG', 'mouse.visible', true)
end

function onEvent(name, value1, value2)
	if name == "Adopt Me Trade Request" then
		local request = {}
		local xx = getRandomInt(0, 1280-1053) --math.random(0, 1280-1053)
		local yy = getRandomInt(0, 720-626) --math.random(0, 720-626)
		-- Making the Request BG
		makeLuaSprite("RequestBG"..tostring(requestNum),"trade",xx,yy)
		setObjectCamera("RequestBG"..tostring(requestNum),"other")
		-- Making the text fot the trade request.
		makeLuaText("RequestTXT"..tostring(requestNum),value1.." sent you a trade request",getProperty("RequestBG"..tostring(requestNum)..".width")-420,xx+200,yy+250)
		setTextSize("RequestTXT"..tostring(requestNum),50)
		setTextAlignment("RequestTXT"..tostring(requestNum),"center")
		setObjectCamera("RequestTXT"..tostring(requestNum),"other")
		-- Making the Deny Button.
		makeAnimatedLuaSprite("RequestDeny"..tostring(requestNum),"botton",xx+(1053/2)+50-(268/2),yy+400)  --xx+(1053/2)-(26/2),yy+500
		addAnimationByPrefix("RequestDeny"..tostring(requestNum),"DenyHighlight","red highlight")
		addAnimationByPrefix("RequestDeny"..tostring(requestNum),"DenyIdle","red idle")
		setObjectCamera("RequestDeny"..tostring(requestNum),"other")
		-- Making the Accept Button.
		makeAnimatedLuaSprite("RequestAccept"..tostring(requestNum),"botton",xx+(1053/2)-160-(268/2),yy+400)  --xx+(1053/2)-(26/2),yy+500
		addAnimationByPrefix("RequestAccept"..tostring(requestNum),"AcceptHighlight","green highlight")
		addAnimationByPrefix("RequestAccept"..tostring(requestNum),"AcceptIdle","green idle")
		setObjectCamera("RequestAccept"..tostring(requestNum),"other")
		-- Formally creating all the objects
		addLuaSprite("RequestBG"..tostring(requestNum),true)
		addLuaText("RequestTXT"..tostring(requestNum))
		addLuaSprite("RequestDeny"..tostring(requestNum),true)
		addLuaSprite("RequestAccept"..tostring(requestNum),true)
		-- Creating the dictionary
		request["BGSprite"] = "RequestBG"..tostring(requestNum)
		request["Text"] = "RequestTXT"..tostring(requestNum)
		request["SpriteButton1"] = "RequestDeny"..tostring(requestNum)
		request["SpriteButton2"] = "RequestAccept"..tostring(requestNum)
		-- Adding it to the active windows and incrementing the request number
		table.insert(activeWindows,request)
		requestNum = requestNum + 1
	end
end
