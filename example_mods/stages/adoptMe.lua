function onCreate()
    makeLuaSprite('stageback', 'stages/adoptme/adoptmeStage', -600, -300);
    scaleObject('stageback', 1.2, 1.2)
    setScrollFactor('stageback', 0.95, 0.95);

    addLuaSprite('stageback', false);
end