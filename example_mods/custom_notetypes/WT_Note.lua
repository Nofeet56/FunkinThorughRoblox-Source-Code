local DadAltAnims = {'singLEFT-WT', 'singDOWN-WT', 'singUP-WT', 'singRIGHT-WT'};
local DADSingDir = 1;
function opponentNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'WT_Note' then
		DADSingDir = direction;
		characterPlayAnim('dad', DadAltAnims[DADSingDir+1], true);
    end
end