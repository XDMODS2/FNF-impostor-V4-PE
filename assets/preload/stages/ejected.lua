
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx =  275;
local yy =  550;
local xx2 = 275;
local yy2 = 550;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()


	makeLuaSprite('bla2', 'sus/bla', 0, 0)
        setProperty("bla2.scale.x", 10);
        setProperty("bla2.scale.y", 10);
        addLuaSprite('bla2', 'false')
        setObjectCamera('bla2', 'other')


	makeAnimatedLuaSprite('BG0', 'Sus/ejected/video', 480, 280);
	addAnimationByPrefix('BG0', 'idle', 'video idle', 25, false);
	setObjectCamera('BG0','other')
	addLuaSprite('BG0', false);
        setProperty("BG0.scale.x", 4.0);
        setProperty("BG0.scale.y", 4.0);
	setProperty('BG0.visible', false)


	makeAnimatedLuaSprite('BGA', 'Sus/ejected/video 2', 480, 280);
	addAnimationByPrefix('BGA', 'idle', 'video idle', 25, false);
	setObjectCamera('BGA','other')
	addLuaSprite('BGA', false);
        setProperty("BGA.scale.x", 4.0);
        setProperty("BGA.scale.y", 4.0);
	setProperty('BGA.visible', false)


	makeLuaSprite('BG1', 'Sus/ejected/sky', -2750, -2500);
        setProperty("BG1.scale.x", 4.0);
        setProperty("BG1.scale.y", 4.0);
        scaleObject('BG1',4,4);

	makeLuaSprite('BG2', 'Sus/ejected/fgclouds', -3000, -300);
        setProperty("BG2.scale.x", 2.8);
        setProperty("BG2.scale.y", 2.0);
        scaleObject('BG2',4,4);


	makeLuaSprite('BG3', 'Sus/ejected/dificio', -500,  1050);
        setProperty("BG3.scale.y", 4.0);
        setProperty("BG3.scale.x", 4.0);

	makeLuaSprite('BG4', 'Sus/ejected/speedlines', -800,  1750);
	scaleObject('BG4',4,4);

	makeLuaSprite('BG5', 'Sus/ejected/dificio', -500,  -3050);
        setProperty("BG5.scale.y", 4.0);
        setProperty("BG5.scale.x", 4.0);

	makeLuaSprite('BG6', 'Sus/ejected/dificio', -500,  4050);
        setProperty("BG6.scale.y", 4.0);
        setProperty("BG6.scale.x", 4.0);

	makeAnimatedLuaSprite('BG7', 'Sus/ejected/scrollingClouds', -80, 280);
	addAnimationByPrefix('BG7', 'idle', 'Cloud1', 25, false);
        objectPlayAnimation('BG7', 'idle', true);
        scaleObject('BG7',4,4);


	makeAnimatedLuaSprite('BG8', 'Sus/ejected/scrollingClouds', -280, 280);
	addAnimationByPrefix('BG8', 'idle', 'Cloud2', 25, false);
        objectPlayAnimation('BG8', 'idle', true);
        scaleObject('BG8',4,4);


	makeAnimatedLuaSprite('BG9', 'Sus/ejected/scrollingClouds', -600, 280);
	addAnimationByPrefix('BG9', 'idle', 'Cloud3', 25, false);
        objectPlayAnimation('BG9', 'idle', true);
        scaleObject('BG9',4,4);


	makeAnimatedLuaSprite('BGQ', 'Sus/ejected/scrollingClouds', -1280, 280);
	addAnimationByPrefix('BGQ', 'idle', 'Cloud0', 25, false);
        objectPlayAnimation('BGQ', 'idle', true);
        scaleObject('BGQ',4,4);



	addLuaSprite('BG1', false);
	addLuaSprite('BG2', false);
	addLuaSprite('BG3', false);
	addLuaSprite('BG6', false);
	addLuaSprite('BG4', true);
	addLuaSprite('BG5', false);
	addLuaSprite('BG7', true);
	addLuaSprite('BG8', true);
	addLuaSprite('BG9', true);
	addLuaSprite('BGQ', true);


runTimer('caida',2)
runTimer('dificio',2)
runTimer('ILLOJUAN CACHONDO',2)
runTimer('ILLOJUAN CACHONDO 2',2)
runTimer('ILLOJUAN CACHONDO 3',2)
runTimer('ILLOJUAN CACHONDO 4',2)

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
            setProperty('defaultCamZoom',0.45)
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

            setProperty('defaultCamZoom',0.45)
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
function onEvent(name,value1,value2)
	if name == 'Thepotra' then 
		
		if value1 == 'video' then
        	setProperty('BG0.visible', true)
                objectPlayAnimation('BG0', 'idle', true);
        	setProperty('bla2.visible', false)
               end

		if value1 == 'video 2' then
        	setProperty('BGA.visible', true)
        	setProperty('BG0.visible', false)
                objectPlayAnimation('BGA', 'idle', true);
              end

		if value1 == 'video final' then
        	setProperty('BGA.visible', false)


              end

	end
end
function onTimerCompleted(t,l,ll)
       if t == 'caida' then

		setProperty('BG4.y', 1750)
		doTweenY('BG4','BG4', -2500, 0.7,'linear')
                runTimer('caida',0.7)

        end
       if t == 'dificio' then

		setProperty('BG3.y', 1050)
		doTweenY('BG3','BG3', -3050, 0.5,'linear')
		setProperty('BG5.y', -3050)
		doTweenY('BG5','BG5', -6000, 0.5,'linear')
		setProperty('BG6.y', 4050)
		doTweenY('BG6','BG6', 1050, 0.5,'linear')
                runTimer('dificio',0.5)

        end
       if t == 'ILLOJUAN CACHONDO' then


		setProperty('BGQ.y', 1000)
		doTweenY('BGQ','BGQ', -7000, 2.0,'linear')
                runTimer('ILLOJUAN CACHONDO',4.0)

        end
       if t == 'ILLOJUAN CACHONDO 2' then


		setProperty('BG7.y', 1000)
		doTweenY('BG7','BG7', -7000, 2.0,'linear')
                runTimer('ILLOJUAN CACHONDO 2',3.0)

        end
       if t == 'ILLOJUAN CACHONDO 3' then


		setProperty('BG8.y', 1000)
		doTweenY('BG8','BG8', -7000, 3.0,'linear')
                runTimer('ILLOJUAN CACHONDO 3',5.0)
        end
       if t == 'ILLOJUAN CACHONDO 3' then


		setProperty('BG9.y', 1000)
		doTweenY('BG9','BG9', -7000, 1.0,'linear')
                runTimer('ILLOJUAN CACHONDO 4',7.0)

        end
end
