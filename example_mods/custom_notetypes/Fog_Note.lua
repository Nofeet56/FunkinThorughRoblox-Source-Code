local fogAlpha = 0
local beat = 1
local canTween = true

function math.clamp(n, low, high)
	return math.min(math.max(n, low), high)
end

function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Fog Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'fognote_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes',i,'noteSplashTexture','fognoteSplashes')
			--setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '-500'); --Default value is: 0.023, health gained on hit
			--setPropertyFromGroup('unspawnNotes', i, 'missHealth', '500'); --Default value is: 0.0475, health lost on miss
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', true);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		end
	end
	--debugPrint('Script started!')
	makeLuaSprite("fog","fog",0,0)
	setObjectCamera("fog","hud")
	addLuaSprite("fog",true)
	doTweenAlpha("fogTween","fog",0,0.1,"linear")
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Fog Note' then

	end
end

-- Called after the note miss calculations
-- Player missed a note by letting it go offscreen
function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Fog Note' then
		fogAlpha = math.clamp(fogAlpha + 0.25,0,1)
		canTween = true
	end
end

function onStepHit()
	if canTween then
		canTween = false
		doTweenAlpha("fogTween","fog",fogAlpha,0.5,"linear")
	end
end

function onBeatHit()
	local modbeat = (beat % 4) + 1
	if modbeat == 4 then
		--fogAlpha = math.clamp(fogAlpha - 0.2,0,1)
	end
	beat = beat + 1
end

function onTweenCompleted(tag)
	if tag == "fogTween" then
		canTween = true
		fogAlpha = math.clamp(fogAlpha - 0.02,0,1)
	end
end
