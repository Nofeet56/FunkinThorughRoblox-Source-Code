import("LoadingState");
import("flixel.ui.FlxSpriteButton");

var nofeet = new FlxSprite();

function create(){
    var bg:FlxSprite = new FlxSprite().loadGraphic(Paths.image('creditsMenu/bg'));
    bg.updateHitbox();
    bg.screenCenter();
    bg.scrollFactor.set(0, 0);
    add(bg);

    nofeet = new FlxSprite().loadGraphic(Paths.image('creditsMenu/Nofeet'));
    nofeet.scale.set(0.5, 0.5);
    nofeet.updateHitbox();
    nofeet.screenCenter();
    nofeet.x -= 345;
    nofeet.y -= 125;
    nofeet.scrollFactor.set(0, 0);
    add(nofeet);
}

function update(elapsed:Float){
    if (FlxG.keys.justPressed.BACKSPACE) {FlxG.switchState(new MainMenuState());}
    if (FlxG.keys.justPressed.C) {FlxG.switchState(new CreditsState());}
}