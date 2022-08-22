finishedGameover = false;
startedPlaying = false;
doLines = false;

function onGameOver()
	if getProperty('dad.curCharacter') == 'sonic' then
		doLines = true;
	end
	if getProperty('dad.curCharacter') == 'sonic-running' then
		doLines = true;
	end
	if doLines == true then
    	soundFadeIn(nil, 4, 0.2, 0.2);
    	math.randomseed(os.time());
   	 	soundName = string.format('SonicDed%i', math.random(1, 20));
    	playSound(soundName, 2, 'VoicelineSND');
    	startedPlaying = true;
		setPropertyFromClass('flixel.FlxG', 'music.volume', 0.2);
		return Function_Continue;
	end
end

function onGameOverConfirm(reset)
	finishedGameover = true;
end

function onSoundFinished(tag)
	if tag == 'VoicelineSND' and not finishedGameover then
		soundFadeIn(nil, 4, 0.2, 1);
	end
end