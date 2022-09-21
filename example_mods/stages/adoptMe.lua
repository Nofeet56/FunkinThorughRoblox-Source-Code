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

    makeAnimatedLuaSprite('girlSolo1', 'stages/adoptme/Gorl', -100, 300);
    addAnimationByPrefix('girlSolo1', 'gBop', 'G3Bop', 24, false);
    scaleObject('girlSolo1', 0.8, 0.8);
    setScrollFactor('girlSolo1', 0.95, 0.95);

    makeAnimatedLuaSprite('girlSolo2', 'stages/adoptme/Gorl', 1100, 300);
    addAnimationByPrefix('girlSolo2', 'gBop', 'G3Bop', 24, false);
    scaleObject('girlSolo2', 0.8, 0.8);
    setScrollFactor('girlSolo2', 0.95, 0.95);

    makeAnimatedLuaSprite('FGBop', 'stages/adoptme/FGBop', -450, 200);
    addAnimationByPrefix('FGBop', 'FGBop', 'FGBop', 24, false);
    scaleObject('FGBop', 1.4,1.4);
    setScrollFactor('FGBop', 1.3, 1.3);

    addLuaSprite('stageback', false);
    addLuaSprite('dog1', false);
    addLuaSprite('girls1', false);
    addLuaSprite('girlSolo1', false);
    addLuaSprite('girlSolo2', false);
    addLuaSprite('gorls', false);
    addLuaSprite('giraffe', false);
    addLuaSprite('girlsTable', false);
    addLuaSprite('dog2', false);
    addLuaSprite('FGBop', true);
end

function onBeatHit()
    objectPlayAnimation('dog2', 'dBop', false);
    objectPlayAnimation('dog1', 'dogBop', false);
    objectPlayAnimation('giraffe', 'faffBop', false);
    objectPlayAnimation('giraffe', 'faffBop', false);
	if curBeat % 2 == 1 or curBeat % 2 == 2 then
        objectPlayAnimation('girls1', 'girlsBop', false);
        objectPlayAnimation('gorls', 'gorlBop', false);
        objectPlayAnimation('girlsTable', 'gtBop', false);
        objectPlayAnimation('girlSolo1', 'gBop', false);
        objectPlayAnimation('girlSolo2', 'gBop', false);
    end  
    if curBeat % 2 == 0 then
        objectPlayAnimation('FGBop', 'FGBop', false);
    end
end
