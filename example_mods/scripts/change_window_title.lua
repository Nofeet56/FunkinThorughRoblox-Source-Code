function setWindowProperty(property,value)
	setPropertyFromClass('openfl.Lib', 'application.window.'..property, value)
end

function onCreate()
	setWindowProperty("title","Funkin' Through Roblox")
end
