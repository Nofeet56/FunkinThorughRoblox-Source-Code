local antiStack = false
local cope = false
function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Speed' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'SPEEDNOTE_assets');
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.023');
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.0475');
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
			end
		end
	end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Speed' then
		if antiStack == false then
			boink()
		else
		end
	end
end

function boink()
	antiStack = false
	runTimer('boinkTimer1', 0)
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'boinkTimer1' then
		setProperty('songSpeed', 4.5)
		cope = true
		runTimer('boinkTimer2', 8)
	end
	
	if tag == 'boinkTimer2' then
		cope = false
		runTimer('boinkTimer3', 0)
	end
	
	if tag == 'boinkTimer3' then
		antiStack = false
	end
end