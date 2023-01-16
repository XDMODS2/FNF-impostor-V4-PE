-- it take 1 hour to finish it, kill me
local normal = true
local wCam = false
local bCam = false

function onUpdate()
    setProperty('gf.alpha', 0);

	if normal then
		setCameraPos(1100, 1150, true)
		setProperty('defaultCamZoom', 0.7)
	end

	if wCam then
		setCameraPos(1540, 1275, true)
		setProperty('defaultCamZoom', 1.2)
	end

	if bCam then
		setCameraPos(800, 1275, true)
		setProperty('defaultCamZoom', 1.2)
	end

	-- white
	if curStep == 384 or curStep == 402 or curStep == 437 or curStep == 504 or curStep == 529 or curStep == 577 or curStep == 630 or curStep == 662 or curStep == 696 or curStep == 728 or curStep == 784 or curStep == 800 or curStep == 824 or curStep == 843 or curStep == 896 or curStep == 928 or curStep == 960 or curStep == 986 or curStep == 1024 or curStep == 1088 then
		wCam = true
		bCam = false
	end

	-- blue
	if curStep == 396 or curStep == 411 or curStep == 512 or curStep == 560 or curStep == 612 or curStep == 642 or curStep == 688 or curStep == 712 or curStep == 768 or curStep == 790 or curStep == 818 or curStep == 832 or curStep == 852 or curStep == 880 or curStep == 904 or curStep == 942 or curStep == 976 or curStep == 992 or curStep == 1040 or curStep == 1120 then
		bCam = true
		wCam = false
	end

	if curBeat == 112 then
		bCam = false
		wCam = false
		normal = true
	end
	if curBeat == 177 then
		bCam = false
		wCam = false
		normal = true
	end
	if curBeat == 216 then
		bCam = false
		wCam = false
		normal = true
	end
	if curBeat == 228 then
		bCam = false
		wCam = false
		normal = true
	end
	if curBeat == 264 then
		bCam = false
		wCam = false
		normal = true
	end

	if curStep == 1162 then
		setCameraPos(1100, 1150, true)
		normal = false
		bCam = false
		wCam = false
		setProperty('defaultCamZoom', 0.5)
	end
end

function setCameraPos(x, y, forced)
	setProperty('camFollow.x', x)
	setProperty('camFollow.y', y)
	setProperty('cameraSpeed', 100000)
	runTimer('wee', 0.1)
	if forced then
		triggerEvent('Camera Follow Pos', x, y)
	else
           	triggerEvent('Camera Follow Pos', '', '')
	end
end

function onTimerCompleted(t)
	if t == 'wee' then
		setProperty('cameraSpeed', getPropertyFromClass('ClientPrefs', 'CamSpeed'))
	end
end