var sky = new FlxSprite(-240,-140).loadGraphic(Paths.image("natDis/Sky"));
var wawa = new FlxSprite(-240,-140).loadGraphic(Paths.image("natDis/water"));
var hqBG = new FlxSprite(-240,0).loadGraphic(Paths.image("natDis/hqInBG"));
var spawn = new FlxSprite(-240,-40).loadGraphic(Paths.image("natDis/spawn"));
function create() {
    add(sky);
    wawa.scrollFactor.set(0.8, 0.8);
    add(wawa);
    hqBG.scrollFactor.set(0.8, 0.8);
    add(hqBG);
    add(spawn);


    defaultCamZoom = 0.9;
}
function stepHit() {
        
}