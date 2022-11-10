function create() {
    note.frames = Paths.getSparrowAtlas("SPEEDNOTE_assets");
    note.enableRating = false;
    

    switch(note.noteData % PlayState.song.keyNumber) {
        case 0:
            note.animation.addByPrefix('scroll', "purple0");
        case 1:
            note.animation.addByPrefix('scroll', "blue0");
        case 2:
            note.animation.addByPrefix('scroll', "green0");
        case 3:
            note.animation.addByPrefix('scroll', "red0");
    }

    note.setGraphicSize(Std.int(note.width * 0.7));
    note.updateHitbox();
    note.antialiasing = true;
    note.splashColor = 0xFF00FFFF;
    for(i in PlayState.playerStrums){
        trace(i.scrollSpeed);
    }
    EngineSettings.customScrollSpeed = false;
}
function onPlayerHit() {
        for(i in PlayState.playerStrums){
            i.scrollSpeed = i.getScrollSpeed() + 1;
            trace(i.scrollSpeed);
        }
       
        
    }
 
function onMiss() {
    return false;
}