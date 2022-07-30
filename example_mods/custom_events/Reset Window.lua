local winX
local winY

function setWindowProperty(property,value)
	setPropertyFromClass('openfl.Lib', 'application.window.'..property, value)
end

function getWindowProperty(property)
	getPropertyFromClass('openfl.Lib', 'application.window.'..property)
end

function onCreate()
	winX = getWindowProperty("x")
	winY = getWindowProperty("y")
	debugPrint("X: ",winX,", Y: ",winY)
end

function onEvent(name, value1, value2)
	if name == "Reset Window" then
		setWindowProperty("x",winX)
		setWindowProperty("y", winY)
	end
end
