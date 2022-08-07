function onCreate()
	makeLuaSprite('stageback', 'stages/bar/FloorWalls', -600, -400);
	scaleObject('stageback', 1.4, 1.4)

	makeAnimatedLuaSprite('bartender', 'stages/bar/Boppers/Bartender', -150, 340);
	addAnimationByPrefix('bartender', 'Bartender', 'BartenderBop instance', 24, false);
	scaleObject('bartender', 1.4, 1.4)

	makeAnimatedLuaSprite('lad', 'stages/bar/Boppers/HeadAuxBop', -450, 390);
	addAnimationByPrefix('lad', 'HeadAuxBop', 'HeadAuxBop', 24, false);
	setScrollFactor('lad', 0.9, 0.9);
	scaleObject('lad', 1.4, 1.4)

	makeAnimatedLuaSprite('other', 'stages/bar/Boppers/LotazBop', 350, 390);
	addAnimationByPrefix('other', 'LotazBop', 'LotazBop', 24, false);
	setScrollFactor('other', 0.9, 0.9);
	scaleObject('other', 1.4, 1.4)
	
	makeAnimatedLuaSprite('guy', 'stages/bar/Boppers/TWTBop', 950, 390);
	addAnimationByPrefix('guy', 'TWTBop', 'TWTBop', 24, false);
	setScrollFactor('guy', 1.1, 1.1);
	scaleObject('guy', 1.4, 1.4);


	makeLuaSprite('stagefront', 'stages/bar/pillars', -600, -400);
	setScrollFactor('stagefront', 0.95, 0.95);
	scaleObject('stagefront', 1.4, 1.4);

	addLuaSprite('stageback', false);
	addLuaSprite('bartender', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('lad', true);
	addLuaSprite('other', true);
	addLuaSprite('guy', true);
end

function onBeatHit()
	if curBeat % 2 == 1 or curBeat % 2 == 2 then
		objectPlayAnimation ('bartender', 'Bartender', false);
		objectPlayAnimation ('lad', 'HeadAuxBop', false)
		objectPlayAnimation ('other', 'LotazBop', false)
		objectPlayAnimation ('guy', 'TWTBop', false)
	end
end
