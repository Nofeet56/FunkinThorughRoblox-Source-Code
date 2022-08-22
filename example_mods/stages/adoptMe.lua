function onCreate()
    makeLuaSprite('stageback', 'stages/adoptme/adoptmeStage', -600, -300);
    scaleObject('stageback', 1.2, 1.2)
    setScrollFactor('stageback', 0.95, 0.95);

    makeAnimatedLuaSprite('dog1', 'stages/adoptme/Dog1', 800, 400);
    addAnimationByPrefix('dog1', 'dogBop', 'Dog1', 24, false);
    setScrollFactor('dog1', 0.95, 0.95);

    makeAnimatedLuaSprite('girls1', 'stages/adoptme/Group1', 500, 275);
    addAnimationByPrefix('girls1', 'girlsBop', 'GG1', 24, false);
    scaleObject('girls1', 0.8, 0.8);
    setScrollFactor('girls1', 0.95, 0.95);

    makeAnimatedLuaSprite('gorls', 'stages/adoptme/Group2', -200, 300);
    addAnimationByPrefix('gorls', 'gorlBop', 'GG2', 24, false);
    setScrollFactor('gorls', 0.95, 0.95);

    makeAnimatedLuaSprite('giraffe', 'stages/adoptme/Giraffe', -200, 450);
    addAnimationByPrefix('giraffe', 'faffBop', 'Giraffe', 24, false);

    makeAnimatedLuaSprite('girlsTable', 'stages/adoptme/Group3', 1000, 300);
    addAnimationByPrefix('girlsTable', 'gtBop', 'GG3', 24, false);
    scaleObject('girlsTable', 0.9, 0.9);
    setScrollFactor('girlsTable', 0.95, 0.95);

    makeAnimatedLuaSprite('dog2', 'stages/adoptme/Dog2', 1300, 500);
    addAnimationByPrefix('dog2', 'dBop', 'Dog2', 24, false);


    addLuaSprite('stageback', false);
    addLuaSprite('dog1', false);
    addLuaSprite('girls1', false);
    addLuaSprite('gorls', false);
    addLuaSprite('giraffe', false);
    addLuaSprite('girlsTable', false);
    addLuaSprite('dog2', false);
end

function onBeatHit()
	if curBeat % 2 == 1 or curBeat % 2 == 2 then
        objectPlayAnimation('girls1', 'girlsBop', false);
        objectPlayAnimation('gorls', 'gorlBop', false);
        objectPlayAnimation('girlsTable', 'gtBop', false);
    end  
    
    objectPlayAnimation('dog1', 'dogBop', false);
    objectPlayAnimation('giraffe', 'faffBop', false);
    objectPlayAnimation('dog2', 'dBop', false);
end
