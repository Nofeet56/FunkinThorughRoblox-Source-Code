function onCreate()
	makeLuaSprite('stageback', 'stages/city/Buildings', -600, -300);
	setScrollFactor('stageback', 0.7, 0.7);

	makeLuaSprite('stagefront', 'stages/city/ParkBG', -600, -300);

	makeLuaSprite('fence', 'stages/city/FenceFG', -600, -200);
	setScrollFactor('fence', 1.1, 1.1);



	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('fence', true);
end
