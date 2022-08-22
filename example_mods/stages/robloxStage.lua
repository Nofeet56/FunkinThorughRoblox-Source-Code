function onCreate()
	makeLuaSprite('stageback', 'stages/roStage/wall', -600, -300);
	
	makeLuaSprite('stagefront', 'stages/roStage/stage', -1000, -880);
	scaleObject('stagefront', 1.6, 1.6);

	makeLuaSprite('stagecurtains', 'stages/roStage/curtains', -500, -300);
	setScrollFactor('stagecurtains', 1.3, 1.3);
	scaleObject('stagecurtains', 0.9, 0.9);

	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('stagecurtains', false);
	
	close(true);
end