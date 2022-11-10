//Nofeet's Code
import flixel.text.FlxText;

var menuIconSelect = new FlxSprite().loadGraphic(Paths.image('ui/moreOn@2x'));
var menuIcon = new FlxSprite().loadGraphic(Paths.image('ui/moreOff@2x'));
var randomInt:Int = 0;
var doChat:Bool = false;
var username:String = " ";
var chatMessage:String = " ";
var prevChat:String = " ";
var verPrevChat:String = " ";
var message:FlxText = new FlxText(0, 200);
var prevMess:FlxText = new FlxText(0, 150);
var verPrevMess:FlxText = new FlxText(0, 100);

GameOverSubstate.char = mod + ":bf-dead";

function create() {
    var base1 = new FlxSprite().loadGraphic(Paths.image('ui/iconBase@2x'));
    base1.scrollFactor.set(0, 0);
    base1.screenCenter();
    base1.antialiasing = EngineSettings.antialiasing;
    base1.cameras = [camHUD];
    base1.scale.set(0.9, 0.9);
    base1.x -= 610;
    base1.y -= 330;

    var base2 = new FlxSprite(0, 0).loadGraphic(Paths.image('ui/iconBase@2x'));
    base2.scrollFactor.set(0, 0);
    base2.screenCenter();
    base2.antialiasing = EngineSettings.antialiasing;
    base2.cameras = [camHUD];
    base2.scale.set(0.9, 0.9);
    base2.x -= 540;
    base2.y -= 330;
    

    var base3 = new FlxSprite(0, 0).loadGraphic(Paths.image('ui/iconBase@2x'));
    base3.scrollFactor.set(0, 0);
    base3.screenCenter();
    base3.antialiasing = EngineSettings.antialiasing;
    base3.cameras = [camHUD];
    base3.scale.set(0.9, 0.9);
    base3.x += 610;
    base3.y -= 330;

    var roblox = new FlxSprite().loadGraphic(Paths.image('ui/coloredlogo@2x'));
    roblox.scrollFactor.set(0, 0);
    roblox.screenCenter();
    roblox.antialiasing = EngineSettings.antialiasing;
    roblox.cameras = [camHUD];
    roblox.scale.set(0.9, 0.9);
    roblox.x -= 610;
    roblox.y -= 330;
    
    var chatIcon = new FlxSprite().loadGraphic(Paths.image('ui/chatOn@2x'));
    chatIcon.scrollFactor.set(0, 0);
    chatIcon.screenCenter();
    chatIcon.antialiasing = EngineSettings.antialiasing;
    chatIcon.cameras = [camHUD];
    chatIcon.scale.set(0.9, 0.9);
    chatIcon.x -= 540;
    chatIcon.y -= 330;

    menuIcon.scrollFactor.set(0, 0);
    menuIcon.screenCenter();
    menuIcon.antialiasing = EngineSettings.antialiasing;
    menuIcon.cameras = [camHUD];
    menuIcon.scale.set(0.9, 0.9);
    menuIcon.x += 610;
    menuIcon.y -= 330;

    menuIconSelect.scrollFactor.set(0, 0);
    menuIconSelect.screenCenter();
    menuIconSelect.antialiasing = EngineSettings.antialiasing;
    menuIconSelect.cameras = [camHUD];
    menuIconSelect.scale.set(0.9, 0.9);
    menuIconSelect.x += 610;
    menuIconSelect.y -= 330;

    add(base1);
    add(base2);
    add(base3);
    add(roblox);
    add(chatIcon);
    add(menuIcon);
}

function onSongStart() {
    add(menuIconSelect);
    remove(menuIcon);
}

function beatHit(){
    randomInt = FlxG.random.int(1,15);
    if(randomInt == 15){
        doChat = true;
        trace("oh its chatting time!");
    } else {
        doChat = false;
    }
    if(doChat == true){
        remove(message);
        remove(prevMess);
        remove(verPrevMess);
        verPrevMess.text = verPrevChat;
        verPrevChat = prevChat;
        prevMess.text = prevChat;
        randomInt = FlxG.random.int(1,11);
        switch(randomInt){
            case 1:
                username = "Nofeet";
            case 2:
                username = "wt2003superman";
            case 3:
                username = "v01d";
            case 4:
                username = "TommyRobard";
            case 5:
                username = "JamsTheMans";
            case 6:
                username = "Pat.";
            case 7:
                username = "Mexoed";
            case 8:
                username = "whitesword";
            case 9:
                username = "MrGenie151";
            case 10:
                username = "lotazthetazthattazed";
            case 11:
                username = "skwoink";
        }
        randomInt = FlxG.random.int(1,25);
        switch(randomInt){
            case 1:
                chatMessage = "########";
            case 2:
                chatMessage = "Those 2 look stupid";
            case 3:
                chatMessage = "Man. Roblox is fire.";
            case 4:
                chatMessage = "Does anyone want to be \nmy friend?";
            case 5:
                chatMessage = "They're probably 5 lol. \nStupid kid.";
            case 6:
                chatMessage = "Friday night funkin moment";
            case 7:
                chatMessage = "e";   
            case 8: 
                chatMessage = "also known as toddlers";
            case 9:
                chatMessage = "Agent tesla trojan virus \nmoment";
            case 10:
                chatMessage = "This game sucks ####";
            case 11:
                chatMessage = "Yo yall rap battlin there?";
            case 12:
                chatMessage = "Damn, wish i could join \nlol";
            case 13:
                chatMessage = "wait Mexoed? Youre here \ntoo?";
            case 14:
                chatMessage = "ayo TimmyRobard is that \nyou?";
            case 15:
                chatMessage = "you have a cockroach death \nmatch under you bed rn";
            case 16:
                chatMessage = "you was taking a #### ran \nout of toilet paper and wiped ur #### with a curtain";
            case 17:
                chatMessage = "wait am i in an fnf mod or something";
            case 18:
                chatMessage = "bwah bwah bwah";
            case 19:
                chatMessage = "the day of reckoning shall come";
            case 20:
                chatMessage = "lmao";
            case 21:
                chatMessage = "152.141.239.74";
            case 22:
                chatMessage = "BUGS IN MY SKIN! BUGS IN \nMY SKIN! GET THEM OUT!!!";
            case 23:
                chatMessage = "I'm not poor. I play in \ncornhole tournament";
            case 24:
                chatMessage = "starcasum";
            case 25:
                chatMessage = "My bro is play football \nfusion 2";
        }
        var userLength:Int = username.length();
        var mesLength:Int = username.length();
        message.text = ("[" + username + "]: " + chatMessage);
        prevChat = ("[" + username + "]: " + chatMessage);
        message.scrollFactor.set(0, 0);
        message.scale.set(2,2);
        message.updateHitbox();
        message.cameras = [camHUD];
        add(message);
        prevMess.scrollFactor.set(0, 0);
        prevMess.scale.set(2,2);
        prevMess.updateHitbox();
        prevMess.cameras = [camHUD];
        add(prevMess);
        verPrevMess.scrollFactor.set(0, 0);
        verPrevMess.scale.set(2,2);
        verPrevMess.updateHitbox();
        verPrevMess.cameras = [camHUD];
        add(verPrevMess);
    }
    if (curStep >= 34){
        add(menuIcon);
        remove(menuIconSelect);
    }
}