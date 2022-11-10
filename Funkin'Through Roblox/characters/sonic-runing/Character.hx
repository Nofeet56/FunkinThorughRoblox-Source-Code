function create() {
	character.frames = Paths.getCharacter(character.curCharacter);
	character.loadJSON(true);

	if (!character.isPlayer) GameOverSubstate.scriptName = mod + ":scripts/deadLines";
}