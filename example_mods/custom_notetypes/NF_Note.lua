local DadAltAnims = {'singLEFT-NF', 'singDOWN-NF', 'singUP-NF', 'singRIGHT-NF'};
local DADSingDir = 1;
function opponentNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'NF_Note' then
		DADSingDir = direction;
		characterPlayAnim('dad', DadAltAnims[DADSingDir+1], true);
    end
end