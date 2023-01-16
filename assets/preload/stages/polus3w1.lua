
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx =  470;
local yy =  270;
local xx2 = 780;
local yy2 = 270;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()

end

function onCreate()


	makeLuaSprite( 'back', 'ptilinhasmelafap', -488, -452)
	scaleObject('back', 2.22, 2.22);
	setLuaSpriteScrollFactor('back', 1.0, 1.0)
	addLuaSprite('back', false)

	setProperty('back.visible', true)

	makeLuaSprite( 'jajaja', 'when_te_matan', 0, 0)
	scaleObject('jajaja', 1.4, 1.4);
	setLuaSpriteScrollFactor('jajaja', 1.0, 1.0)
	setObjectCamera('jajaja', 'other');
	addLuaSprite('jajaja', true)
	setProperty('jajaja.visible', false)
	
	makeAnimatedLuaSprite('snowback', 'snowback',-388, -426);
 setLuaSpriteScrollFactor('snowback', 0.9, 0.9);		
			 addLuaSprite('snowback', true);
			 scaleObject('snowback', 2.5, 2.5);

addLuaSprite('snowback', true); 
addAnimationByPrefix('snowback', 'idle', 'snowback Snow group instance ', 20, true);

setProperty('snowback.visible', true);

		makeAnimatedLuaSprite('gf', 'wtfpija', 260, 180)

luaSpriteAddAnimationByPrefix('gf', 'gf', 'speakers lonely', 24, true);

	scaleObject('gf', 1.02, 1.02)
		addLuaSprite("gf", false)

		makeAnimatedLuaSprite('gente', 'omgvean', -940, 140)
luaSpriteAddAnimationByPrefix('gente', 'gente', ' q', 14, true);
	setLuaSpriteScrollFactor('gente', 1.5, 1.5)
	scaleObject('gente', 3.75, 3.75)
		addLuaSprite("gente", true)

end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == 'uncuerpoalv' then
			setProperty('jajaja.visible', true);
		end
	end
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
            setProperty('defaultCamZoom',0.75)
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

            setProperty('defaultCamZoom',0.75)
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

