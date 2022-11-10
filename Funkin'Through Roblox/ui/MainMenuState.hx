//Nofeet's code
import CoolUtil;
import flixel.text.FlxText;
import("flixel.ui.FlxSpriteButton");
import("options.screens.OptionMain");

var menuCharacter = new FlxSprite();
var storyMode = new FlxSprite();
var freePlay = new FlxSprite();
var credits = new FlxSprite();
var options = new FlxSprite();
var curSelect = new String();
var numSelect = 0;

var menuCharacter = new FlxSprite();

function create(){
    state.defaultBehaviour = false;
    state.options.remove("story mode");
    state.options.remove("freeplay");
    state.options.remove("mods");
    state.options.remove("donate");
    state.options.remove("toolbox");
    state.options.remove("credits");
    state.options.remove("options");

}
function createPost() {
    var bg:FlxSprite = new FlxSprite().loadGraphic(Paths.image('bg'));
    bg.updateHitbox();
    bg.screenCenter();
    bg.scrollFactor.set(0, 0);
    add(bg);

    var sideBar:FlxSprite = new FlxSprite().loadGraphic(Paths.image('sidebar'));
    sideBar.scale.set(1.1,1.1);
    sideBar.updateHitbox();
    sideBar.screenCenter();
    sideBar.scrollFactor.set(0, 0);
    sideBar.x += 65;
    sideBar.y += 20;
    sideBar.antialiasing = true;
    add(sideBar);

    var modVers:FlxText = new FlxText(100, 100);
    modVers.setFormat(Paths.font("vcr.ttf"), 12, 0x575757, "RIGHT");
    modVers.text = "FTR version 0.5";
    modVers.screenCenter();
    modVers.scrollFactor.set(0, 0);
    modVers.x -= 575;
    modVers.y += 350;
    add(modVers);

    var topBar:FlxSprite = new FlxSprite().loadGraphic(Paths.image('topBar'));
    topBar.screenCenter();
    topBar.scrollFactor.set(0, 0);
    topBar.y -= 347;
    topBar.antialiasing = true;
    add(topBar);

    var blackShit:FlxSprite = new FlxSprite().loadGraphic(Paths.image('BlackShit'));
    blackShit.screenCenter();
    blackShit.scrollFactor.set(0, 0);
    blackShit.x += 400;
    add(blackShit);

    menuCharacter.frames = Paths.getSparrowAtlas('menuCharacters/bf_menublox');
    menuCharacter.animation.addByPrefix('bop', 'BF Idle', 24, true);
    menuCharacter.antialiasing = true;
    menuCharacter.updateHitbox();
    menuCharacter.scrollFactor.set(0, 0);
    menuCharacter.scale.set(1.3,1.3);
    menuCharacter.screenCenter();
    menuCharacter.x += 375;
    menuCharacter.y += 120;
    add(menuCharacter); 
    menuCharacter.animation.play('bop');

    storyMode.frames = Paths.getSparrowAtlas('MenuOptions/StoryMode');
    storyMode.animation.addByPrefix('idle', 'StoryMode0', 24, true);
    storyMode.animation.addByPrefix('selected', 'StoryModeUnderlined', 24, false);
    storyMode.antialiasing = true;
    storyMode.updateHitbox();
    storyMode.scrollFactor.set(0, 0);
    storyMode.screenCenter();
    storyMode.x -= 250;
    storyMode.y -= 250;
    add(storyMode);
    storyMode.animation.play('idle');

    freePlay.frames = Paths.getSparrowAtlas('MenuOptions/Freeplay');
    freePlay.animation.addByPrefix('idle', 'Freeplay0', 24, true);
    freePlay.animation.addByPrefix('selected', 'FreeplayUnderlined', 24, false);
    freePlay.antialiasing = true;
    freePlay.updateHitbox();
    freePlay.scrollFactor.set(0, 0);
    freePlay.screenCenter();
    freePlay.x -= 250;
    freePlay.y -= 50;
    add(freePlay);
    freePlay.animation.play('idle');

    credits.frames = Paths.getSparrowAtlas('MenuOptions/Credits');
    credits.animation.addByPrefix('idle', 'Credits0', 24, true);
    credits.animation.addByPrefix('selected', 'CreditsUnderlined', 24, false);
    credits.antialiasing = true;
    credits.updateHitbox();
    credits.scrollFactor.set(0, 0);
    credits.screenCenter();
    credits.x -= 200;
    credits.y += 100;
    add(credits);
    credits.animation.play('idle');

    options.frames = Paths.getSparrowAtlas('MenuOptions/Options');
    options.animation.addByPrefix('idle', 'Options0', 24, true);
    options.animation.addByPrefix('selected', 'OptionsUnderlined', 24, false);
    options.antialiasing = true;
    options.updateHitbox();
    options.scrollFactor.set(0, 0);
    options.screenCenter();
    options.x -= 200;
    options.y += 200;
    add(options);
    options.animation.play('idle');
}

function update(elapsed:Float){
    if (FlxG.keys.justPressed.DOWN && numSelect != 3){
        numSelect++;
        CoolUtil.playMenuSFX(0);
    }
    if (FlxG.keys.justPressed.UP && numSelect != 0){
        numSelect--;
        CoolUtil.playMenuSFX(0);
    }

    switch (numSelect){
        case 0:
            curSelect = "storyMode";
        case 1:
            curSelect = "freePlay";
        case 2:
            curSelect = "credits";
        case 3:
            curSelect = "options";
    }

    for(i in [storyMode, freePlay, credits, options]){
        if (FlxG.mouse.overlaps(i)){
            if(i == storyMode){
                curSelect = "storyMode";
                numSelect = 0;
            } 
            if(i == freePlay){
                curSelect = "freePlay";
                numSelect = 1;
            } 
            if(i == credits){
                curSelect = "credits";
                numSelect = 2;
            }
            if(i == options){
                curSelect = "options";
                numSelect = 3;
            }
        }
    }

    switch(curSelect){
        case "storyMode":
            storyMode.animation.play('selected');
            freePlay.animation.play('idle');
            credits.animation.play('idle');
            options.animation.play('idle');
        case "freePlay":
            freePlay.animation.play('selected');
            storyMode.animation.play('idle');
            credits.animation.play('idle');
            options.animation.play('idle');
        case "credits":
            credits.animation.play('selected');
            storyMode.animation.play('idle');
            freePlay.animation.play('idle');
            options.animation.play('idle');
        case "options":
            options.animation.play('selected');
            storyMode.animation.play('idle');
            freePlay.animation.play('idle');
            credits.animation.play('idle');
    }
    if (FlxG.mouse.justPressed || FlxG.keys.justPressed.ENTER){
        if(curSelect == "storyMode"){
            FlxG.switchState(new StoryMenuState());
            CoolUtil.playMenuSFX(1);
        }
        if(curSelect == "freePlay"){
            FlxG.switchState(new FreeplayState());
            CoolUtil.playMenuSFX(1);
        }
        if(curSelect == "credits"){
            FlxG.switchState(new ModState("robloxCredits", mod));
            CoolUtil.playMenuSFX(1);
        }
        if(curSelect == "options"){
            FlxG.switchState(new OptionMain());
            CoolUtil.playMenuSFX(1);
        }
    }
}