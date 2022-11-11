//nofeet's code
import("LoadingState");
import("flixel.ui.FlxSpriteButton");

var nofeet = new FlxSprite();
var v01d = new FlxSprite();
var bran = new FlxSprite();
var mexoed = new FlxSprite();
var pat = new FlxSprite();
var cacto = new FlxSprite();
var pig = new FlxSprite();
var forest = new FlxSprite();
var rac = new FlxSprite();
var nineth = new FlxSprite();
var jams = new FlxSprite();
var white = new FlxSprite();
var puffu = new FlxSprite();
var sonic = new FlxSprite();
var wt = new FlxSprite();
var spot = new FlxSprite();
var red = new FlxSprite();
var luther = new FlxSprite();
var pageNum:FlxText;
var curPage = 1;

function create(){
    var bg:FlxSprite = new FlxSprite().loadGraphic(Paths.image('creditsMenu/bg'));
    bg.updateHitbox();
    bg.screenCenter();
    bg.scrollFactor.set(0, 0);
    bg.antialiasing = true;
    add(bg);

    var guide:FlxText = new FlxText(100, 100);
    guide.setFormat(Paths.font("vcr.ttf"), 12, 0x575757, "RIGHT");
    guide.text = "Arrow keys to change page\n Press C for yoshi credits\n";
    guide.screenCenter();
    guide.scrollFactor.set(0, 0);
    guide.x -= 515;
    guide.y += 355;
    add(guide);

    var arrowRight = new FlxSprite().loadGraphic(Paths.image('creditsMenu/arrow'));
    arrowRight.updateHitbox();
    arrowRight.screenCenter();
    arrowRight.scrollFactor.set(0, 0);
    arrowRight.x += 25;
    arrowRight.y += 350;
    add(arrowRight);

    var arrowLeft = new FlxSprite().loadGraphic(Paths.image('creditsMenu/arrow'));
    arrowLeft.flipX = true;
    arrowLeft.updateHitbox();
    arrowLeft.screenCenter();
    arrowLeft.scrollFactor.set(0, 0);
    arrowLeft.x -= 25;
    arrowLeft.y += 350;
    add(arrowLeft);

    pageNum = new FlxText();
    pageNum.setFormat(Paths.font("vcr.ttf"), 20, 0x3A3C3E, "RIGHT");
    pageNum.text = curPage;
    pageNum.updateHitbox();
    pageNum.screenCenter();
    pageNum.scrollFactor.set(0, 0);
    pageNum.y += 340;
    add(pageNum);

    nofeet = new FlxSprite().loadGraphic(Paths.image('creditsMenu/Nofeet'));
    nofeet.scale.set(0.5, 0.5);
    nofeet.updateHitbox();
    nofeet.screenCenter();
    nofeet.antialiasing = true;
    nofeet.x -= 365;
    nofeet.y -= 150;
    nofeet.scrollFactor.set(0, 0);
    add(nofeet);

    v01d = new FlxSprite().loadGraphic(Paths.image('creditsMenu/v01d'));
    v01d.scale.set(0.5, 0.5);
    v01d.updateHitbox();
    v01d.screenCenter();
    v01d.antialiasing = true;
    v01d.y -= 150;
    v01d.scrollFactor.set(0, 0);
    add(v01d);

    bran = new FlxSprite().loadGraphic(Paths.image('creditsMenu/brandon'));
    bran.scale.set(0.5, 0.5);
    bran.updateHitbox();
    bran.screenCenter();
    bran.antialiasing = true;
    bran.x += 365;
    bran.y -= 150;
    bran.scrollFactor.set(0, 0);
    add(bran);

    mexoed = new FlxSprite().loadGraphic(Paths.image('creditsMenu/mexoed'));
    mexoed.scale.set(0.5, 0.5);
    mexoed.updateHitbox();
    mexoed.screenCenter();
    mexoed.antialiasing = true;
    mexoed.x -= 365;
    mexoed.scrollFactor.set(0, 0);
    add(mexoed);

    pat = new FlxSprite().loadGraphic(Paths.image('creditsMenu/pat'));
    pat.scale.set(0.5, 0.5);
    pat.updateHitbox();
    pat.screenCenter();
    pat.antialiasing = true;
    pat.scrollFactor.set(0, 0);
    add(pat);

    cacto = new FlxSprite().loadGraphic(Paths.image('creditsMenu/cacto'));
    cacto.scale.set(0.5, 0.5);
    cacto.updateHitbox();
    cacto.screenCenter();
    cacto.antialiasing = true;
    cacto.x += 365;
    cacto.scrollFactor.set(0, 0);
    add(cacto);

    pig = new FlxSprite().loadGraphic(Paths.image('creditsMenu/lightning'));
    pig.scale.set(0.5, 0.5);
    pig.updateHitbox();
    pig.screenCenter();
    pig.antialiasing = true;
    pig.x -= 365;
    pig.y += 150;
    pig.scrollFactor.set(0, 0);
    add(pig);

    forest = new FlxSprite().loadGraphic(Paths.image('creditsMenu/forest'));
    forest.scale.set(0.5, 0.5);
    forest.updateHitbox();
    forest.screenCenter();
    forest.antialiasing = true;
    forest.y += 150;
    forest.scrollFactor.set(0, 0);
    add(forest);

    rac = new FlxSprite().loadGraphic(Paths.image('creditsMenu/rac'));
    rac.scale.set(0.5, 0.5);
    rac.updateHitbox();
    rac.screenCenter();
    rac.antialiasing = true;
    rac.x += 365;
    rac.y += 150;
    rac.scrollFactor.set(0, 0);
    add(rac);

    nineth = new FlxSprite().loadGraphic(Paths.image('creditsMenu/lenineth'));
    nineth.scale.set(0.5, 0.5);
    nineth.updateHitbox();
    nineth.screenCenter();
    nineth.antialiasing = true;
    nineth.x -= 365;
    nineth.y -= 150;
    nineth.scrollFactor.set(0, 0);

    jams = new FlxSprite().loadGraphic(Paths.image('creditsMenu/jams'));
    jams.scale.set(0.5, 0.5);
    jams.updateHitbox();
    jams.screenCenter();
    jams.antialiasing = true;
    jams.y -= 150;
    jams.scrollFactor.set(0, 0);

    white = new FlxSprite().loadGraphic(Paths.image('creditsMenu/white'));
    white.scale.set(0.5, 0.5);
    white.updateHitbox();
    white.screenCenter();
    white.antialiasing = true;
    white.x += 365;
    white.y -= 150;
    white.scrollFactor.set(0, 0);

    puffu = new FlxSprite().loadGraphic(Paths.image('creditsMenu/puffu'));
    puffu.scale.set(0.5, 0.5);
    puffu.updateHitbox();
    puffu.screenCenter();
    puffu.antialiasing = true;
    puffu.x -= 365;
    puffu.scrollFactor.set(0, 0);

    sonic = new FlxSprite().loadGraphic(Paths.image('creditsMenu/slend'));
    sonic.scale.set(0.5, 0.5);
    sonic.updateHitbox();
    sonic.screenCenter();
    sonic.antialiasing = true;
    sonic.scrollFactor.set(0, 0);

    wt = new FlxSprite().loadGraphic(Paths.image('creditsMenu/wt'));
    wt.scale.set(0.5, 0.5);
    wt.updateHitbox();
    wt.screenCenter();
    wt.antialiasing = true;
    wt.x += 365;
    wt.scrollFactor.set(0, 0);

    spot = new FlxSprite().loadGraphic(Paths.image('creditsMenu/spot'));
    spot.scale.set(0.5, 0.5);
    spot.updateHitbox();
    spot.screenCenter();
    spot.antialiasing = true;
    spot.x -= 365;
    spot.y += 150;
    spot.scrollFactor.set(0, 0);

    red = new FlxSprite().loadGraphic(Paths.image('creditsMenu/red'));
    red.scale.set(0.5, 0.5);
    red.updateHitbox();
    red.screenCenter();
    red.antialiasing = true;
    red.y += 150;
    red.scrollFactor.set(0, 0);

    luther = new FlxSprite().loadGraphic(Paths.image('creditsMenu/luther'));
    luther.scale.set(0.5, 0.5);
    luther.updateHitbox();
    luther.screenCenter();
    luther.antialiasing = true;
    luther.x += 365;
    luther.y += 150;
    luther.scrollFactor.set(0, 0);
}

function update(elapsed:Float){
    if (FlxG.keys.justPressed.BACKSPACE) {FlxG.switchState(new MainMenuState());}
    if (FlxG.keys.justPressed.C) {FlxG.switchState(new CreditsState()); CoolUtil.playMenuSFX(1);}
    if (FlxG.keys.justPressed.RIGHT && curPage != 2){
        curPage++;
        pageNum.text = curPage;
        CoolUtil.playMenuSFX(0);
        remove(nofeet);
        remove(v01d);
        remove(bran);
        remove(pat);
        remove(mexoed);
        remove(cacto);
        remove(pig);
        remove(forest);
        remove(rac);
        add(nineth);
        add(jams);
        add(white);
        add(puffu);
        add(sonic);
        add(wt);
        add(spot);
        add(red);
        add(luther);
    }
    if (FlxG.keys.justPressed.LEFT && curPage != 1){
        curPage--;
        pageNum.text = curPage;
        CoolUtil.playMenuSFX(0);
        remove(nineth);
        remove(jams);
        remove(white);
        remove(puffu);
        remove(sonic);
        remove(wt);
        remove(spot);
        remove(red);
        remove(luther);
        add(nofeet);
        add(v01d);
        add(bran);
        add(pat);
        add(mexoed);
        add(cacto);
        add(pig);
        add(forest);
        add(rac);
    }
}