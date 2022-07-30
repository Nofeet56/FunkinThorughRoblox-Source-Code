function setWindowProperty(property,value)
	setPropertyFromClass('openfl.Lib', 'application.window.'..property, value)
end

function getWindowProperty(property)
	getPropertyFromClass('openfl.Lib', 'application.window.'..property)
end

function onEvent(name, value1, value2)
	if name == "Random Window Movement" then
		setWindowProperty("maximized", false)
		setWindowProperty("fullscreen", false)
		setWindowProperty("x", getRandomInt(10, 500))
		setWindowProperty("y", getRandomInt(10, 500))
	end
end
