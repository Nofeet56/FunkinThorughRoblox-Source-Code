function setWindowProperty(property,value)
	setPropertyFromClass('openfl.Lib', 'application.window.'..property, value)
end

function getWindowProperty(property)
	getPropertyFromClass('openfl.Lib', 'application.window.'..property)
end

function onEvent(name, value1, value2)
	if name == "Set Window X Y" then
		setWindowProperty("maximized", false)
		setWindowProperty("fullscreen", false)
		setWindowProperty("x",value1)
		setWindowProperty("y", value2)
	end
end
