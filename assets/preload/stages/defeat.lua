
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0
local xx = 750;
local yy = 500;
local xx2 = 750;
local yy2 = 500;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()

	makeLuaSprite('rojo', 'Sus/defeat/stageback', -550, -200);
	scaleObject('rojo',4,4);

	makeAnimatedLuaSprite('BG1', 'Sus/defeat/defeat', -350, -300);
	addAnimationByPrefix('BG1', 'idle', 'defeat', 24, false);
	scaleObject('BG1',4,4);
	addLuaSprite('BG1', false);
        setProperty("BG1.scale.y", 4.8);
        setProperty("BG1.scale.x", 4.8);

	makeLuaSprite('BG2', 'Sus/defeat/lol thing', -375, 120);
	scaleObject('BG2',2,2);
        setProperty("BG2.scale.x", 2.4);


	makeLuaSprite('BG3', 'Sus/defeat/deadBG', -2800, 50);
	scaleObject('BG3',4,4);
        setProperty("BG3.scale.y", 1.6);
        setProperty("BG3.scale.x", 1.6);


	makeLuaSprite('BG4', 'Sus/defeat/iluminao omaga', -450, -100);
	scaleObject('BG4',4,4);


	makeLuaSprite('BG5', 'Sus/defeat/deadFG', -2800, 50);
	scaleObject('BG5',4,4);
        setProperty("BG5.scale.y", 1.6);
        setProperty("BG5.scale.x", 1.6);
	setLuaSpriteScrollFactor('BG5', 1.2, 1.2);









	addLuaSprite('rojo', false);
	addLuaSprite('BG1', false);
	addLuaSprite('BG2', false);
	addLuaSprite('BG3', false);
	addLuaSprite('BG4', true);	
	addLuaSprite('BG5', true);	


	setProperty('rojo.visible', false);
	setProperty('BG2.visible', false);
	setProperty('BG3.visible', false);
	setProperty('BG5.visible', false);


end
function goodNoteHit(id, noteData, noteType, isSustainNote)

		setProperty('health', 0.01);


end
function onCountdownStarted()
	for i = 0, 3 do
		setPropertyFromGroup('opponentStrums', i, 'x', -900);
	end

	setPropertyFromGroup('playerStrums', 0, 'x', 413);
	setPropertyFromGroup('playerStrums', 1, 'x', 523);
	setPropertyFromGroup('playerStrums', 2, 'x', 633);
	setPropertyFromGroup('playerStrums', 3, 'x', 743);
       	 doTweenAlpha('AlphaTween1', 'healthBarBG', 0, 0.25)
       	 doTweenAlpha('AlphaTween2', 'healthBar', 0, 0.25)
       	 doTweenAlpha('AlphaTween4', 'iconP1', 0, 0.25)
       	 doTweenAlpha('AlphaTween5', 'iconP2', 0, 0.25)





end
function onBeatHit()
       if curBeat % 4== 0 then

       objectPlayAnimation('BG1', 'idle', true);

       end
end
function onUpdate()
	setProperty('gf.alpha', 0);
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
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
    if curBeat == 16 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 32 then
        setProperty('defaultCamZoom',0.7)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 48 then
        setProperty('defaultCamZoom',0.8)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 68 then
        setProperty('defaultCamZoom',0.5)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 100 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 500
        yy = 500
        xx2 = 900
        yy2 = 500
    end
    if curBeat == 164 then
        setProperty('defaultCamZoom',0.5)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 194 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 196 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 212 then
        setProperty('defaultCamZoom',0.7)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 228 then
        setProperty('defaultCamZoom',0.8)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 244 then
        setProperty('defaultCamZoom',0.85)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 260 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 292 then
        setProperty('defaultCamZoom',0.75)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 360 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 500
        yy = 500
        xx2 = 900
        yy2 = 500
    end
    if curBeat == 424 then
        setProperty('defaultCamZoom',0.7)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 456 then
        setProperty('defaultCamZoom',0.8)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 472 then
        setProperty('defaultCamZoom',0.9)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 488 then
        setProperty('defaultCamZoom',50)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    
end
function onEvent(name,value1,value2)
	if name == 'Thepotra' then 
		
		if value1 == 'old' then
			setProperty('BG1.visible', false);
			setProperty('BG2.visible', false);
			setProperty('BG3.visible', false);
			setProperty('BG4.visible', false);
			setProperty('BG5.visible', false);
			setProperty('rojo.visible', true);

		end

		if value1 == 'new' then
			setProperty('BG1.visible', true);
			setProperty('BG2.visible', true);
			setProperty('BG3.visible', true);
			setProperty('BG4.visible', true);
			setProperty('BG5.visible', true);
			setProperty('rojo.visible', false);

		end

		if value1 == 'go pico' then
			setProperty('BG2.visible', true);
			setProperty('BG3.visible', true);
			setProperty('BG5.visible', true);

               end
	end
end
