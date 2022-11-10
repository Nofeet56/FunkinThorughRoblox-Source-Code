import("LoadingState");

var logoBump:FlxSprite = null;
var gfDancing:FlxSprite = null;

function create() {
    var randomScreen:Int = FlxG.random.int(1,5);
    var a:Array<Character> = [];
    switch(randomScreen)
	    {
            case 1:
                gfDancing = new FlxSprite(FlxG.width * 0.4, FlxG.height * 0.07);
                gfDancing.frames = Paths.getSparrowAtlas('title/gfs/gfRobloxTitle');
                gfDancing.animation.addByIndices('danceLeft', 'GF Dancing Beat Menu', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
                gfDancing.animation.addByIndices('danceRight', 'GF Dancing Beat Menu', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28], "", 24, false);
                gfDancing.antialiasing = EngineSettings.antialiasing;
                add(gfDancing);
            case 2:
                var barBg = new FlxSprite(-600, -250).loadGraphic(Paths.image('title/bgs/Bar'));
                gfDancing = new FlxSprite(FlxG.width * 0.4, FlxG.height * 0.07);
                gfDancing.frames = Paths.getSparrowAtlas('title/gfs/wtTitle');
                gfDancing.animation.addByIndices('danceLeft', 'WTTitle', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], "", 24, false);
                gfDancing.animation.addByIndices('danceRight', 'WTTitle', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], "", 24, false);
                gfDancing.antialiasing = EngineSettings.antialiasing;
                add(barBg);
                add(gfDancing);                
            case 3:
                var bg = new FlxSprite(-600, -250).loadGraphic(Paths.image('title/bgs/StageTitle'));
                gfDancing = new FlxSprite(FlxG.width * 0.4, FlxG.height * 0.07);
                gfDancing.frames = Paths.getSparrowAtlas('title/gfs/nofeetTitle');
                gfDancing.animation.addByIndices('danceLeft', 'NofeetTitle', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], "", 24, false);
                gfDancing.animation.addByIndices('danceRight', 'NofeetTitle', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], "", 24, false);
                gfDancing.antialiasing = EngineSettings.antialiasing;
                add(bg);
                add(gfDancing);
            case 4:
                var city = new FlxSprite(-600, -250).loadGraphic(Paths.image('title/bgs/city'));
                gfDancing = new FlxSprite(FlxG.width * 0.4, FlxG.height * 0.07);
                gfDancing.frames = Paths.getSparrowAtlas('title/gfs/spotTitle');
                gfDancing.animation.addByIndices('danceLeft', 'SpotTitle', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], "", 24, false);
                gfDancing.animation.addByIndices('danceRight', 'SpotTitle', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], "", 24, false);
                gfDancing.antialiasing = EngineSettings.antialiasing;
                add(city);
                add(gfDancing);
            case 5:
                var greenHill = new FlxSprite(-600, -250).loadGraphic(Paths.image('title/bgs/greenHill'));
                gfDancing = new FlxSprite(FlxG.width * 0.4, FlxG.height * 0.07);
                gfDancing.frames = Paths.getSparrowAtlas('title/gfs/sonicTitle');
                gfDancing.animation.addByIndices('danceLeft', 'SonicMenu', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
                gfDancing.animation.addByIndices('danceRight', 'SonicMenu', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 2], "", 24, false);
                gfDancing.antialiasing = EngineSettings.antialiasing;
                add(greenHill);
                add(gfDancing);
        }

    logoBump = new FlxSprite(50, -35);
    logoBump.frames = Paths.getSparrowAtlas('title/logoBumpin');
    logoBump.antialiasing = true;
    logoBump.animation.addByPrefix('bump', 'logo bumpin', 24, false);
    logoBump.updateHitbox();
    logoBump.scale.x = logoBump.scale.y = 0.95;
    add(logoBump);
}

var danced = false;

function beatHit() {
    logoBump.animation.play('bump');
    gfDancing.animation.play(danced ? "danceLeft" : "danceRight");
    danced = !danced;
    FlxG.camera.zoom = 1.03;
    FlxTween.tween(FlxG.camera, {zoom: 1}, 0.4, {ease: FlxEase.quadOut});
}