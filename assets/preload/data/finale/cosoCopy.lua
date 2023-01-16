
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx = 500;
local yy = 600;
local xx2 = 700;
local yy2 = 700;
local ofs = 100;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()
	
end

function onBeatHit()

end

function onUpdate()
    setProperty('gf.alpha', 0);

    if curBeat == 32 then
        setProperty('defaultCamZoom',0.8)
    end

    if curBeat < 32 then --start
        triggerEvent('Camera Follow Pos', 750, 800)
    end

    if curBeat >= 32 and curBeat < 48 then --first to black
        triggerEvent('Camera Follow Pos', 450, 1000)
    end
    if curBeat >= 48 and curBeat < 64 then --to bf
        triggerEvent('Camera Follow Pos', 1250, 1000)
    end
    if curBeat >= 64 and curBeat < 68 then --bf zoom in
        triggerEvent('Camera Follow Pos', 1400, 1050)
        setProperty('defaultCamZoom',1.2)
    end
    if curBeat == 67 then
        setProperty('defaultCamZoom',2.4)
    end
    if followchars == true and curBeat >= 68 then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.4)
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

            setProperty('defaultCamZoom',0.5)
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    if curBeat == 492 then
        doTweenZoom('defeated', 'camGame', 2.4, 1.2, 'circIn')
    end
end
local cpuplay = false
local isNormalIcon = true

function onCreate()
	makeLuaText('bot', '', 512, 10, 650)
	addLuaText('bot')
	setTextAlignment('bot', 'left')
	if dadName == 'blackparasite' then
		makeAnimatedLuaSprite('chingaste', 'icons/icon-blackFinale', getProperty('iconP2.x'), getProperty('iconP2.y'))
		addAnimationByPrefix('chingaste', 'uwu', 'uwu', 24, true)
		addAnimationByPrefix('chingaste', 'owo', 'owo', 24, true)
		setScrollFactor('chingaste', 0, 0)
		setObjectCamera('chingaste', 'hud')
		addLuaSprite('chingaste', true)
		setObjectOrder('chingaste', 99)
		objectPlayAnimation('chingaste', 'owo', false)
		setProperty('chingaste.offset.x', -5)
		setProperty('chingaste.offset.y', 140)

        makeAnimatedLuaSprite('chingaste2', 'icons/icon-a', getProperty('iconP1.x'), getProperty('iconP1.y'))
	    addAnimationByPrefix('chingaste2', 'uwu', 'uwu', 24, true)
        setScrollFactor('chingaste2', 0, 0)
		setObjectCamera('chingaste2', 'hud')
		addLuaSprite('chingaste2', true)
		setObjectOrder('chingaste2', 99)
		objectPlayAnimation('chingaste2', 'uwu', false)
		setProperty('chingaste2.offset.x', -1100)
		setProperty('chingaste2offset.y', 0)
	end
end

function onUpdate(elapsed)
	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.P') and cpuplay then
		if getProperty('cpuControlled') then
			setProperty('cpuControlled', false)
			setTextString('bot', 'Press P to toggle the Bot: Off')
		else
			setProperty('cpuControlled', true)
			setTextString('bot', 'Press P to toggle the Bot: On')
		end
	end
	if dadName == 'blackparasite' then
		setProperty('iconP2.alpha', 0)
		if getProperty('health') > 1.6 then
			objectPlayAnimation('chingaste', 'owo', false)
		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('chingaste', 'owo', false)
		else
			objectPlayAnimation('chingaste', 'uwu', false)
		end
	end
	setProperty('camOther.zoom', getProperty('camHUD.zoom'))
	setProperty('chingaste.x', getProperty('iconP2.x'))
	setProperty('chingaste.angle', getProperty('iconP2.angle'))
	setProperty('chingaste.y', getProperty('iconP2.y') + 15)
	setProperty('chingaste.scale.x', getProperty('iconP2.scale.x'))
	setProperty('chingaste.scale.y', getProperty('iconP2.scale.y'))

	setProperty('chingaste2.x', getProperty('iconP1.x'))
    setProperty('chingaste2.angle', getProperty('iconP1.angle'))
	setProperty('chingaste2.y', getProperty('iconP1.y') +100)
	setProperty('chingaste2.scale.x', getProperty('iconP1.scale.x'))
	setProperty('chingaste2.scale.y', getProperty('iconP1.scale.y'))
end

local healthBarStyle = ''
function onCreatePost()
   if songName == 'finale' then
healthBarStyle = 'SkinHB'
makeLuaSprite('SkinHealthBar', 'hoycacho', -100, 0)
setObjectCamera('SkinHealthBar', 'hud')
addLuaSprite('SkinHealthBar', true)
end
end
function onUpdate()
if healthBarStyle == 'SkinHB' then
setProperty('SkinHealthBar.alpha',getProperty('healthBar.alpha'))
setProperty('SkinHealthBar.x', getProperty('healthBar.x') - 304)
setProperty('SkinHealthBar.y', getProperty('healthBar.y') - 160)
setObjectOrder('SkinHealthBar',15)
end
if healthBarStyle ~= '' then
setProperty('healthBarBG.visible', false)
setProperty('healthBar.scale.y', 0.1,0.1)
setObjectOrder('healthBar', 1)
setObjectOrder('healthBarBG', 14)
end
end