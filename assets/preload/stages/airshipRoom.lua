
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx = 300;
local yy = 500;
local xx2 = 700;
local yy2 = 500;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()
makeLuaSprite('DlowFloor','newAirship/DlowFloor', -2430 , 350);
	setLuaSpriteScrollFactor('DlowFloor', 1, 1);
	scaleObject('DlowFloor', 4, 4, true);

makeLuaSprite('backDlowFloor','newAirship/backDlowFloor', -650 , 325);
	setLuaSpriteScrollFactor('backDlowFloor', 1, 0.9);
	scaleObject('backDlowFloor', 1, 1, true);

makeLuaSprite('YELLOW','newAirship/YELLOW', -2200  , 200);
	setLuaSpriteScrollFactor('YELLOW', 1, 1);
	scaleObject('YELLOW', 1, 1, true);

setProperty('YELLOW.visible',false)

makeLuaSprite('fartingSky','newAirship/fartingSky', -1400 , -500);
	setLuaSpriteScrollFactor('fartingSky', 0.9, 0.9);
	scaleObject('fartingSky', 4, 4, true);

makeLuaSprite('cloudYellow 1','newAirship/cloudYellow 1', -1600 ,280);
	setLuaSpriteScrollFactor('cloudYellow 1', 0.8, 0.8);
	scaleObject('cloudYellow 1', 4, 4, true);

makeLuaSprite('backSkyyellow','newAirship/backSkyyellow', -1600 ,320);
	setLuaSpriteScrollFactor('backSkyyellow', 0.9, 0.9);
	scaleObject('backSkyyellow', 4, 4, true);

makeLuaSprite('yellow could 2','newAirship/yellow could 2', -800 ,290);
	setLuaSpriteScrollFactor('yellow could 2', 0.8, 0.8);
	scaleObject('yellow could 2 1', 1, 1, true);

makeLuaSprite('yellow cloud 3','newAirship/yellow cloud 3', 800 ,250);
	setLuaSpriteScrollFactor('yellow cloud 3', 0.8, 0.8);
	scaleObject('yellow cloud 3', 1, 1, true);

makeLuaSprite('window','newAirship/window', -1400 , -400);
	setLuaSpriteScrollFactor('window', 1, 1);
	scaleObject('window', 4, 4, true);


addLuaSprite('fartingSky',false);
addLuaSprite('backSkyyellow',false);
addLuaSprite('yellow could 2',false);
addLuaSprite('yellow cloud 3',false);
addLuaSprite('cloudYellow 1',false);
addLuaSprite('window',false);
addLuaSprite('backDlowFloor',false);
addLuaSprite('DlowFloor',false);
addLuaSprite('YELLOW',false);
end




function onUpdate()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.6)
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            setProperty('defaultCamZoom',0.6)
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end

