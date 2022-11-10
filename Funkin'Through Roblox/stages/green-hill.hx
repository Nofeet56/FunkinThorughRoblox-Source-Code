var bg1 = new FlxSprite(-240,0).loadGraphic(Paths.image("green-hill/bg1"));
bg1.scale.set(1.1,1.1);
bg1.scrollFactor.set(0.8,0.8);
var bg2 = new FlxSprite(-240,0).loadGraphic(Paths.image("green-hill/bg2"));
bg2.scale.set(1.1,1.1);
bg2.scrollFactor.set(0.7,0.7);
var floor = new FlxSprite(-280,-140).loadGraphic(Paths.image("green-hill/Ground"));
floor.scale.set(1.1,1.1);
floor.scrollFactor.set(0.95,0.95);
var thing = new FlxSprite(-240,120).loadGraphic(Paths.image("green-hill/Flowers"));
thing.scale.set(1.1,1.1);
thing.scrollFactor.set(1.2,1.2);
var sky = new FlxSprite(-240,-140).loadGraphic(Paths.image("green-hill/Sky"));
var bflegs = new FlxSprite();
var soniclegs = new FlxSprite();
soniclegs.frames = Paths.getSparrowAtlas("green-hill/SonicLegs");
var wawa = new FlxSprite(-1475,20);
var floor2 = new FlxSprite(-100,620);

function preloadchar(char:Character) {
    char = new Character(400,0,mod + ":" + char);
    add(char);
    char.cameras = [camHUD];
    char.alpha = 0.001;
    char.screenCenter();
    trace(char);
}
function create() {
    
    add(wawa);
    add(floor2);

    add(soniclegs);
    add(bflegs);

    bflegs.screenCenter();
    preloadchar("boyrun");
    preloadchar("sonic-runing");
    defaultCamZoom = 0.9;
    add(sky);
    add(bg2);
    add(bg1);
    add(floor);
    
    floor2.scale.set(1.5,1.5);
    wawa.scale.set(1.5,1.5);
}
function createPost() {
    add(thing);
}
function stepHit() {
    
    switch(curStep){
        case 768:
            bflegs.frames = Paths.getSparrowAtlas("green-hill/BFLegs");
            bflegs.animation.addByPrefix("qwertyuiop", "BFLegsRunin",24,true);
            bflegs.animation.play("qwertyuiop");
            bflegs.screenCenter();
            bflegs.x -= 50;
            soniclegs.animation.addByPrefix("run","SonicLegsRunning",24,true);
            soniclegs.animation.play("run");
            soniclegs.y += 400;
            soniclegs.x += 1000;
            floor2.frames = Paths.getSparrowAtlas("green-hill/ScrollingGround");
            floor2.animation.addByPrefix("yes", "ScrollingGround",24,true);
            floor2.animation.play("yes");
            floor2.y +=20;
            wawa.frames = Paths.getSparrowAtlas("green-hill/WawaScroll");
            wawa.animation.addByPrefix("wa","BGScroll",24,true);
            wawa.animation.play("wa");
            dad.switchCharacter("sonic-runing", mod);
            boyfriend.switchCharacter("boyrun", mod);
            FlxG.camera.flash(0xffffff, 1.5);
            gf.visible = false;
            boyfriend.y -= 285;
            boyfriend.x -= 400;
            dad.y -= 250;
            dad.x += 150;
            boyfriend.scale.set(.9,.9);
            remove(sky);
            remove(bg1);
            remove(bg2);
            remove(floor);
            remove(thing);



    }    
        
        
    
    
}