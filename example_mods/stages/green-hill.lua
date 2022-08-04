function onCreate()

	makeAnimatedLuaSprite('runner', 'stages/sonic/ScrollingGround', -2500, 640);
	addAnimationByPrefix('runner', 'ScrollingGround', 'ScrollingGround', 30, true)
	scaleObject('runner', 2, 2)

	makeAnimatedLuaSprite('waterfall', 'stages/sonic/WawaScroll', -4500, -100);
	addAnimationByPrefix('waterfall', 'WawaScroll', 'BGScroll', 24, true)
	scaleObject('waterfall', 2, 2)

	makeAnimatedLuaSprite('legs', 'stages/sonic/SonicLegs', 935, 460);
	addAnimationByPrefix('legs', 'SonicLegs', 'SonicLegsRunning', 30, true)
	scaleObject('legs', 1.3, 1.5)

	makeAnimatedLuaSprite('bflegs', 'stages/sonic/BFLegs', -30, 150);
	addAnimationByPrefix('bflegs', 'BFLegs', 'BFLegsRunin', 30, true)
	scaleObject('bflegs', 1.3, 1.5)



	makeLuaSprite('bg2', 'stages/sonic/BG2', -240, 0);
	scaleObject('bg2', 1.1, 1.1)
	setScrollFactor('bg2', 0.7, 0.7);

	makeLuaSprite('stageback', 'stages/sonic/BG1', -240, 0);
	scaleObject('stageback', 1.1, 1.1)
	setScrollFactor('stageback', 0.8, 0.8);

	makeLuaSprite('stagefront', 'stages/sonic/Ground', -280, -140);
	scaleObject('stagefront', 1.1, 1.1)
	setScrollFactor('stagefront', 0.95, 0.95);

	makeLuaSprite('flowers', 'stages/sonic/Flowers', -240, 0);
	scaleObject('stageback', 1.1, 1.1)
	setScrollFactor('flowers', 1.2, 1.2);


	makeLuaSprite('sky', 'stages/sonic/Sky', -240, -140);

	addLuaSprite('waterfall', false);
	addLuaSprite('runner', false);
	addLuaSprite('legs', false);
	addLuaSprite('bflegs', false);
	addLuaSprite('sky', false);
	addLuaSprite('bg2', false);
	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('flowers', true);
end

function onStepHit() 
	if curStep == 768 then
		removeLuaSprite('sky', true);
		removeLuaSprite('bg2', true);
		removeLuaSprite('stageback', true);
		removeLuaSprite('stagefront', true);
		removeLuaSprite('flowers', true);
	end
end