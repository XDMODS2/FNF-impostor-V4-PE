
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx = 700;
local yy = -2000;
local xx2 = 1634.05;
local yy2 = -54.3;
local ofs = 50;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()



	makeLuaSprite('sky', 'Sus/danger/sky', -800, -1200);
	addLuaSprite('sky', false);
        setProperty("sky.scale.y", 8.0);
        setProperty("sky.scale.x", 8.0);


	makeLuaSprite('nube0', 'Sus/danger/farthestClouds', 12060, 0);
	addLuaSprite('nube0', false);
        setProperty("nube0.scale.y", 2.0);
        setProperty("nube0.scale.x", 2.0);
	setLuaSpriteScrollFactor('nube0', 0.2, 0.2);


	makeLuaSprite('nube', 'Sus/danger/farthestClouds', 3000, 0);
	addLuaSprite('nube', false);
        setProperty("nube.scale.y", 2.0);
        setProperty("nube.scale.x", 2.0);
	setLuaSpriteScrollFactor('nube', 0.2, 0.2);


	makeLuaSprite('nube2', 'Sus/danger/farthestClouds', -6060, 0);
	addLuaSprite('nube2', false);
        setProperty("nube2.scale.y", 2.0);
        setProperty("nube2.scale.x", 2.0);
	setLuaSpriteScrollFactor('nube2', 0.2, 0.2);



	makeLuaSprite('nub0', 'Sus/danger/backClouds', 12050, 800);
	addLuaSprite('nub0', false);
        setProperty("nub0.scale.y", 8.0);
        setProperty("nub0.scale.x", 8.0);
	setLuaSpriteScrollFactor('nub0', 0.2, 0.2);


	makeLuaSprite('nub', 'Sus/danger/backClouds', 3000, 800);
	addLuaSprite('nub', false);
        setProperty("nub.scale.y", 8.0);
        setProperty("nub.scale.x", 8.0);
	setLuaSpriteScrollFactor('nub', 0.2, 0.2);


	makeLuaSprite('nub2', 'Sus/danger/backClouds', -6050, 800);
	addLuaSprite('nub2', false);
        setProperty("nub2.scale.y", 8.0);
        setProperty("nub2.scale.x", 8.0);
	setLuaSpriteScrollFactor('nub2', 0.2, 0.2);


	makeLuaSprite('airship', 'Sus/danger/airship', 1300, -900);
	addLuaSprite('airship', false);
	setLuaSpriteScrollFactor('airship', 0.3, 0.3);

	makeAnimatedLuaSprite('airshipFan', 'Sus/danger/airshipFan', 2500, 0);
	addAnimationByPrefix('airshipFan', 'idle', 'ala avion instance 1', 30, true);
        objectPlayAnimation('airshipFan', 'idle', true);
	addLuaSprite('airshipFan', false);
	setLuaSpriteScrollFactor('airshipFan', 0.3, 0.3);


	makeLuaSprite('nu0', 'Sus/danger/frontClouds', 22000, 600);
	addLuaSprite('nu0', false);
        setProperty("nu0.scale.y", 2.0);
        setProperty("nu0.scale.x", 2.0);
	setLuaSpriteScrollFactor('nu0', 0.5, 0.5);



	makeLuaSprite('nu', 'Sus/danger/frontClouds', 6000, 600);
	addLuaSprite('nu', false);
        setProperty("nu.scale.y", 2.0);
        setProperty("nu.scale.x", 2.0);
	setLuaSpriteScrollFactor('nu', 0.5, 0.5);


	makeLuaSprite('nu1', 'Sus/danger/frontClouds', -10000, 600);
	addLuaSprite('nu1', false);
        setProperty("nu1.scale.y", 2.0);
        setProperty("nu1.scale.x", 2.0);
	setLuaSpriteScrollFactor('nu1', 0.5, 0.5);


	makeLuaSprite('nubef', 'Sus/danger/bigCloud', 3400, -800);
	addLuaSprite('nubef', false);
	scaleObject('nubef',4,4);
	setLuaSpriteScrollFactor('nubef', 0.6, 0.6);

	makeLuaSprite('a', 'Sus/danger/speedlines', 6000, -800);
	addLuaSprite('a', true);
        setProperty("a.scale.y", 8.0);
        setProperty("a.scale.x", 8.0);


	makeLuaSprite('BG0', 'Sus/danger/fgPlatform', -1200, 240);
	addLuaSprite('BG0', false);
	scaleObject('BG0',4,4);

	makeLuaSprite('BG1', 'Sus/danger/fgPlatform', 1090, 240);
	addLuaSprite('BG1', false);
	scaleObject('BG1',4,4);

	makeLuaSprite('BG2', 'Sus/danger/fgPlatform', 3380, 240);
	addLuaSprite('BG2', false);
	scaleObject('BG2',4,4);


	makeAnimatedLuaSprite('s', 'Sus/danger/rojo', 100, -200);
	addAnimationByPrefix('s', 'idle', 'rojo idle', 8, true);
	addLuaSprite('s', false);
        setProperty("s.scale.x", 2.5);
        setProperty("s.scale.y", 2.5);
	setProperty('s.visible', false)


	makeAnimatedLuaSprite('C', 'Sus/danger/blacklegs', 260, 360);
	addAnimationByPrefix('C', 'idle', 'legs', 30, true);
        objectPlayAnimation('C', 'idle', true);
	addLuaSprite('C', false);
        setProperty("C.scale.x", 1.3);
        setProperty("C.scale.y", 1.3);
        setObjectOrder('C',18);

	makeAnimatedLuaSprite('B', 'Sus/danger/bf_legs', 1565, 420);
	addAnimationByPrefix('B', 'idle', 'run legs', 30, true);
        objectPlayAnimation('B', 'idle', true);
	addLuaSprite('B', false);






runTimer('correr',0.5)
runTimer('nube',0.5)
runTimer('nub',0.5)
runTimer('nu',0.5)
runTimer('nuf',10)
--runTimer('a',0.3)

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
    if curStep == 1 then
        setProperty('defaultCamZoom',0.3)
		followchars = true
        xx = 1634.05
        yy = -54.3
        xx2 = 1634.05
        yy2 = -54.3
    end
    if curBeat == 64 then
        setProperty('defaultCamZoom', 0.4)
        followchars = true
        xx = 800
        yy = 150
        xx2 = 1200
        yy2 = 150
    end
    if curBeat == 96 then
        setProperty('defaultCamZoom', 0.6)
        followchars = true
        xx = 700
        yy = 150
        xx2 = 1200
        yy2 = 150
    end
    if curBeat == 128 then
        setProperty('defaultCamZoom', 0.4)
        xx = 800
        yy = 150
        xx2 = 1200
        yy2 = 150
    end
    if curBeat == 155 then
        setProperty('defaultCamZoom', 0.8)
        followchars = true
        xx = 450
        yy = 150
        xx2 = 450
        yy2 = 150
    end
    if curBeat == 160 then
        setProperty('defaultCamZoom', 0.4)
        followchars = true
        xx = 800
        yy = 150
        xx2 = 1200
        yy2 = 150
    end
    if curBeat == 192 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 700
        yy = 150
        xx2 = 1200
        yy2 = 150
    end
    if curBeat == 256 then
        setProperty('defaultCamZoom', 0.4)
        followchars = true
        xx = 800
        yy = 150
        xx2 = 1200
        yy2 = 150
    end
    if curBeat == 288 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 700
        yy = 150
        xx2 = 1200
        yy2 = 150
    end
    if curBeat == 320 then
        setProperty('defaultCamZoom', 0.3)
        followchars = true
        xx = 1634.05
        yy = -54.3
        xx2 = 1634.05
        yy2 = -54.3
    end
    if curBeat == 384 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 700
        yy = 150
        xx2 = 1200
        yy2 = 150
    end

    
end
function onTimerCompleted(t,l,ll)
       if t == 'correr' then

		setProperty('BG0.x', -1200)
		doTweenX('BG0','BG0', -3490, 1.0,'linear')
		setProperty('BG1.x', 1090)
		doTweenX('BG1','BG1', -1200, 1.0,'linear')
		setProperty('BG2.x', 3380)
		doTweenX('BG2','BG2', 1090, 1.0,'linear')
                runTimer('correr',1.0)

        end
       if t == 'nube' then

		setProperty('nube0.x', 12060)
		doTweenX('nube0','nube0', 3000, 90,'linear')
		setProperty('nube.x', 3000)
		doTweenX('nube','nube', -6060, 90,'linear')
		setProperty('nube2.x', -6060)
		doTweenX('nube2','nube2', -15120, 90,'linear')
                runTimer('nube',90)

        end
       if t == 'nub' then


		setProperty('nub0.x', 12050)
		doTweenX('nub0','nub0', 3000, 60,'linear')
		setProperty('nub.x', 3000)
		doTweenX('nub','nub', -6050, 60,'linear')
		setProperty('nub2.x', -6050)
		doTweenX('nub2','nub2', -15100, 60,'linear')
                runTimer('nub',60)


        end
       if t == 'nu' then

		setProperty('nu0.x', 22000)
		doTweenX('nu0','nu0', 6000, 30,'linear')
		setProperty('nu.x', 6000)
		doTweenX('nu','nu', -10000, 30,'linear')
		setProperty('nu1.x', -10000)
		doTweenX('nu1','nu1', -26000, 30,'linear')
                runTimer('nu',30)

        end
       if t == 'nuf' then

		setProperty('nubef.x', 3400)
		doTweenX('nubef','nubef', -6000, 60,'linear')
                runTimer('nuf',60)
        end
       if t == 'a' then

		setProperty('a.x', 6000)
		doTweenX('a','a', -9000, 1,'linear')
                runTimer('a',5)

        end
end
function onEvent(name,value1,value2)
	if name == 'Thepotra' then 
		
		if value1 == 'a' then
			doTweenX("gf", "gf", -4000, 2.0, "linear")	


		end
		
                if value1 == 's' then
	                setProperty('s.visible', true)
                        objectPlayAnimation('s', 'idle', true);
		end
		
                if value1 == 'sa' then
	                setProperty('s.visible', false)
                end
	end
end

