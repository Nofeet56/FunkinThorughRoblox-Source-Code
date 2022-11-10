//[504]brandon's code. Edited by Nofeet
import flixel.text.FlxText;

var creds:FlxText;
var box:FlxSprite;

function create() {
    box = new FlxSprite(0, 0).loadGraphic(Paths.image("ui/box"));
    box.cameras = [camHUD];
    box.setGraphicSize(Std.int(box.height * 0.8));
    box.screenCenter();
    box.x = 3000;
    box.y -= 130;
    add(box);

    creds = new FlxText(3000, 100, 0, '', 26);
    creds.cameras = [camHUD];
    creds.setGraphicSize(Std.int(creds.width * 0.8));
    creds.updateHitbox();

    add(creds);
}

function onSongStart() {
    
    FlxTween.tween(box, {x: 950}, Std.parseFloat(0.2), {ease: FlxEase.linear});
    FlxTween.tween(creds, {x: 970}, Std.parseFloat(0.2), {ease: FlxEase.linear});
    switch (PlayState.SONG.song.toLowerCase()){
        default:
            creds.text = 'no creds found\n  :no#####:';
        case "piano-blues":
            creds.text = 'Composers:\nNofeet\nCharter:\nNofeet\nProgrammer:\nNofeet\n';
        case "speed":
            creds.text = 'Composers:\nlightningpig, Nofeet\nCharter:\nNofeet, Mexoed\nProgrammer:\nv01d\n';
        case "adopt-me":
            creds.text = 'Composers:\nLeNinethGames\nCharter:\nN/A\nProgrammer:\nN/A\n';
        case "newcomer":
            creds.text = 'Composers:\nCactoAesis\nCharter:\nNofeet\nProgrammer:\nNofeet\n';
        case "try-me":
            creds.text = 'Composers:\nPat\nCharter:\nLuther\nProgrammer:\nN/A\n';
        case "spotty":
            creds.text = 'Composers:\nNofeet\nCharter:\nNofeet\nProgrammer:\nNofeet\n';
        case "tribulation":
            creds.text = 'Composers:\nCactoAesis\nCharter:\nNofeet\nProgrammer:\nN/A\n';
        case "treasure":
            creds.text = 'Composers:\nForestZ\nCharter:\nN/A\nProgrammer:\nN/A\n';
        }
}

function beatHit(){
    if (curStep >= 34){
        FlxTween.tween(box, {x: 3000}, Std.parseFloat(0.6), {ease: FlxEase.linear});
        FlxTween.tween(creds, {x: 3070}, Std.parseFloat(0.6), {ease: FlxEase.linear});
    }
}