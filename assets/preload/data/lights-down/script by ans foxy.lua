function onCreate()
addCharacterToList('whitebf', 'boyfriend') 
addCharacterToList('whitegreen', 'dad') 
end

function onBeatHit()
if curBeat == 1 then

 end
 if curBeat == 64 then
 makeLuaSprite("white","white", 0, 0);
setObjectCamera("white", 'hud')
addLuaSprite("white", true);
removeLuaSprite('stageback', false)
setProperty("gf.visible", false);
doTweenAlpha("white","white", 0, 1, true);
triggerEvent("Change Character", 'bf', "whitebf")
triggerEvent("Change Character", 'dad', "whitegreen")
doTweenColor('scoreTxt', 'scoreTxt', '000000', 0.01, 'linear');
    setProperty('healthBar.visible', false);
    setProperty('healthBarBG.visible', false);
    setProperty('iconP1.visible', false);
    setProperty('iconP2.visible', false);
 end
 if curBeat == 128 then
makeLuaSprite("white","white", 0, 0);
setObjectCamera("white", 'hud')
addLuaSprite("white", true);
addLuaSprite('stageback', false)
setProperty("gf.visible", true);
doTweenAlpha("white","white", 0, 1, true);
triggerEvent("Change Character", 'bf', "bf")
triggerEvent("Change Character", 'dad', "impostor3")
    doTweenColor('scoreTxt', 'scoreTxt', '228B22', 0.01, 'linear');
setProperty('healthBar.visible', true);
    setProperty('healthBarBG.visible', true);
    setProperty('iconP1.visible', true);
    setProperty('iconP2.visible', true);
 end
 if curBeat == 160 then
makeLuaSprite("white","white", 0, 0);
setObjectCamera("white", 'hud')
addLuaSprite("white", true);
removeLuaSprite('stageback', false)
setProperty("gf.visible", false);
doTweenAlpha("white","white", 0, 1, true);
triggerEvent("Change Character", 'bf', "whitebf")
triggerEvent("Change Character", 'dad', "whitegreen")
doTweenColor('scoreTxt', 'scoreTxt', '000000', 0.01, 'linear');
    setProperty('healthBar.visible', false);
    setProperty('healthBarBG.visible', false);
    setProperty('iconP1.visible', false);
    setProperty('iconP2.visible', false);
 end
 if curBeat == 192 then
makeLuaSprite("white","white", 0, 0);
setObjectCamera("white", 'hud')
addLuaSprite("white", true);
addLuaSprite('stageback', false)
setProperty("gf.visible", true);
doTweenAlpha("white","white", 0, 1, true);
triggerEvent("Change Character", 'bf', "bf")
triggerEvent("Change Character", 'dad', "impostor3")
    doTweenColor('scoreTxt', 'scoreTxt', '228B22', 0.01, 'linear');
setProperty('healthBar.visible', true);
    setProperty('healthBarBG.visible', true);
    setProperty('iconP1.visible', true);
    setProperty('iconP2.visible', true);
 end
 if curBeat == 196 then
makeLuaSprite("white","white", 0, 0);
setObjectCamera("white", 'hud')
addLuaSprite("white", true);
removeLuaSprite('stageback', false)
setProperty("gf.visible", false);
doTweenAlpha("white","white", 0, 1, true);
triggerEvent("Change Character", 'bf', "whitebf")
triggerEvent("Change Character", 'dad', "whitegreen")
doTweenColor('scoreTxt', 'scoreTxt', '000000', 0.01, 'linear');
    setProperty('healthBar.visible', false);
    setProperty('healthBarBG.visible', false);
    setProperty('iconP1.visible', false);
    setProperty('iconP2.visible', false);
 end
 if curBeat == 200 then
makeLuaSprite("white","white", 0, 0);
setObjectCamera("white", 'hud')
addLuaSprite("white", true);
addLuaSprite('stageback', false)
setProperty("gf.visible", true);
doTweenAlpha("white","white", 0, 1, true);
triggerEvent("Change Character", 'bf', "bf")
triggerEvent("Change Character", 'dad', "impostor3")
    doTweenColor('scoreTxt', 'scoreTxt', '228B22', 0.01, 'linear');
setProperty('healthBar.visible', true);
    setProperty('healthBarBG.visible', true);
    setProperty('iconP1.visible', true);
    setProperty('iconP2.visible', true);
 end
if curBeat == 202 then
makeLuaSprite("white","white", 0, 0);
setObjectCamera("white", 'hud')
addLuaSprite("white", true);
removeLuaSprite('stageback', false)
setProperty("gf.visible", false);
doTweenAlpha("white","white", 0, 1, true);
triggerEvent("Change Character", 'bf', "whitebf")
triggerEvent("Change Character", 'dad', "whitegreen")
doTweenColor('scoreTxt', 'scoreTxt', '000000', 0.01, 'linear');
    setProperty('healthBar.visible', false);
    setProperty('healthBarBG.visible', false);
    setProperty('iconP1.visible', false);
    setProperty('iconP2.visible', false);
end
if curBeat == 204 then
makeLuaSprite("white","white", 0, 0);
setObjectCamera("white", 'hud')
addLuaSprite("white", true);
addLuaSprite('stageback', false)
setProperty("gf.visible", true);
doTweenAlpha("white","white", 0, 1, true);
triggerEvent("Change Character", 'bf', "bf")
triggerEvent("Change Character", 'dad', "impostor3")
    doTweenColor('scoreTxt', 'scoreTxt', '228B22', 0.01, 'linear');
setProperty('healthBar.visible', true);
    setProperty('healthBarBG.visible', true);
    setProperty('iconP1.visible', true);
    setProperty('iconP2.visible', true);
end
if curBeat == 205 then
makeLuaSprite("white","white", 0, 0);
setObjectCamera("white", 'hud')
addLuaSprite("white", true);
removeLuaSprite('stageback', false)
setProperty("gf.visible", false);
doTweenAlpha("white","white", 0, 1, true);
triggerEvent("Change Character", 'bf', "whitebf")
triggerEvent("Change Character", 'dad', "whitegreen")
doTweenColor('scoreTxt', 'scoreTxt', '000000', 0.01, 'linear');
    setProperty('healthBar.visible', false);
    setProperty('healthBarBG.visible', false);
    setProperty('iconP1.visible', false);
    setProperty('iconP2.visible', false);
end
if curBeat == 206 then
makeLuaSprite("white","white", 0, 0);
setObjectCamera("white", 'hud')
addLuaSprite("white", true);
addLuaSprite('stageback', false)
setProperty("gf.visible", true);
doTweenAlpha("white","white", 0, 1, true);
triggerEvent("Change Character", 'bf', "bf")
triggerEvent("Change Character", 'dad', "impostor3")
    doTweenColor('scoreTxt', 'scoreTxt', '228B22', 0.01, 'linear');
setProperty('healthBar.visible', true);
    setProperty('healthBarBG.visible', true);
    setProperty('iconP1.visible', true);
    setProperty('iconP2.visible', true);
end
if curBeat == 207 then
makeLuaSprite("white","white", 0, 0);
setObjectCamera("white", 'hud')
addLuaSprite("white", true);
removeLuaSprite('stageback', false)
setProperty("gf.visible", false);
doTweenAlpha("white","white", 0, 1, true);
triggerEvent("Change Character", 'bf', "whitebf")
triggerEvent("Change Character", 'dad', "whitegreen")
doTweenColor('scoreTxt', 'scoreTxt', '000000', 0.01, 'linear');
    setProperty('healthBar.visible', false);
    setProperty('healthBarBG.visible', false);
    setProperty('iconP1.visible', false);
    setProperty('iconP2.visible', false);
end
if curBeat == 208 then
makeLuaSprite("white","white", 0, 0);
setObjectCamera("white", 'hud')
addLuaSprite("white", true);
addLuaSprite('stageback', false)
setProperty("gf.visible", true);
doTweenAlpha("white","white", 0, 1, true);
triggerEvent("Change Character", 'bf', "bf")
triggerEvent("Change Character", 'dad', "impostor3")
    doTweenColor('scoreTxt', 'scoreTxt', '228B22', 0.01, 'linear');
setProperty('healthBar.visible', true);
setProperty('healthBarBG.visible', true);
setProperty('iconP1.visible', true);
setProperty('iconP2.visible', true);
end
if curBeat == 272 then
makeLuaSprite("white","white", 0, 0);
setObjectCamera("white", 'hud')
addLuaSprite("white", true);
removeLuaSprite('stageback', false)
setProperty("gf.visible", false);
doTweenAlpha("white","white", 0, 1, true);
triggerEvent("Change Character", 'bf', "whitebf")
triggerEvent("Change Character", 'dad', "whitegreen")
doTweenColor('scoreTxt', 'scoreTxt', '000000', 0.01, 'linear');
    setProperty('healthBar.visible', false);
    setProperty('healthBarBG.visible', false);
    setProperty('iconP1.visible', false);
    setProperty('iconP2.visible', false);
end
if curBeat == 276 then
makeLuaSprite("white","white", 0, 0);
setObjectCamera("white", 'hud')
addLuaSprite("white", true);
addLuaSprite('stageback', false)
setProperty("gf.visible", true);
doTweenAlpha("white","white", 0, 1, true);
triggerEvent("Change Character", 'bf', "bf")
triggerEvent("Change Character", 'dad', "impostor3")
    doTweenColor('scoreTxt', 'scoreTxt', '228B22', 0.01, 'linear');
setProperty('healthBar.visible', true);
    setProperty('healthBarBG.visible', true);
    setProperty('iconP1.visible', true);
    setProperty('iconP2.visible', true);
end
if curBeat == 280 then
makeLuaSprite("white","white", 0, 0);
setObjectCamera("white", 'hud')
addLuaSprite("white", true);
removeLuaSprite('stageback', false)
setProperty("gf.visible", false);
doTweenAlpha("white","white", 0, 1, true);
triggerEvent("Change Character", 'bf', "whitebf")
triggerEvent("Change Character", 'dad', "whitegreen")
doTweenColor('scoreTxt', 'scoreTxt', '000000', 0.01, 'linear');
    setProperty('healthBar.visible', false);
    setProperty('healthBarBG.visible', false);
    setProperty('iconP1.visible', false);
    setProperty('iconP2.visible', false);
end
if curBeat == 284 then
makeLuaSprite("white","white", 0, 0);
setObjectCamera("white", 'hud')
addLuaSprite("white", true);
addLuaSprite('stageback', false)
setProperty("gf.visible", true);
doTweenAlpha("white","white", 0, 1, true);
triggerEvent("Change Character", 'bf', "bf")
triggerEvent("Change Character", 'dad', "impostor3")
    doTweenColor('scoreTxt', 'scoreTxt', '228B22', 0.01, 'linear');
setProperty('healthBar.visible', true);
    setProperty('healthBarBG.visible', true);
    setProperty('iconP1.visible', true);
    setProperty('iconP2.visible', true);
end
if curBeat == 288 then
makeLuaSprite("white","white", 0, 0);
setObjectCamera("white", 'hud')
addLuaSprite("white", true);
removeLuaSprite('stageback', false)
setProperty("gf.visible", false);
doTweenAlpha("white","white", 0, 1, true);
triggerEvent("Change Character", 'bf', "whitebf")
triggerEvent("Change Character", 'dad', "whitegreen")
doTweenColor('scoreTxt', 'scoreTxt', '000000', 0.01, 'linear');
    setProperty('healthBar.visible', false);
    setProperty('healthBarBG.visible', false);
    setProperty('iconP1.visible', false);
    setProperty('iconP2.visible', false);
end
if curBeat == 292 then
makeLuaSprite("white","white", 0, 0);
setObjectCamera("white", 'hud')
addLuaSprite("white", true);
addLuaSprite('stageback', false)
setProperty("gf.visible", true);
doTweenAlpha("white","white", 0, 1, true);
triggerEvent("Change Character", 'bf', "bf")
triggerEvent("Change Character", 'dad', "impostor3")
    doTweenColor('scoreTxt', 'scoreTxt', '228B22', 0.01, 'linear');
setProperty('healthBar.visible', true);
    setProperty('healthBarBG.visible', true);
    setProperty('iconP1.visible', true);
    setProperty('iconP2.visible', true);
end
if curBeat == 295 then
makeLuaSprite("white","white", 0, 0);
setObjectCamera("white", 'hud')
addLuaSprite("white", true);
removeLuaSprite('stageback', false)
setProperty("gf.visible", false);
doTweenAlpha("white","white", 0, 1, true);
triggerEvent("Change Character", 'bf', "whitebf")
triggerEvent("Change Character", 'dad', "whitegreen")
doTweenColor('scoreTxt', 'scoreTxt', '000000', 0.01, 'linear');
    setProperty('healthBar.visible', false);
    setProperty('healthBarBG.visible', false);
    setProperty('iconP1.visible', false);
    setProperty('iconP2.visible', false);
end
if curBeat == 296 then
makeLuaSprite("white","white", 0, 0);
setObjectCamera("white", 'hud')
addLuaSprite("white", true);
addLuaSprite('stageback', false)
setProperty("gf.visible", true);
doTweenAlpha("white","white", 0, 1, true);
triggerEvent("Change Character", 'bf', "bf")
triggerEvent("Change Character", 'dad', "impostor3")
    doTweenColor('scoreTxt', 'scoreTxt', '228B22', 0.01, 'linear');
setProperty('healthBar.visible', true);
    setProperty('healthBarBG.visible', true);
    setProperty('iconP1.visible', true);
    setProperty('iconP2.visible', true);
end
if curBeat == 298 then
makeLuaSprite("white","white", 0, 0);
setObjectCamera("white", 'hud')
addLuaSprite("white", true);
removeLuaSprite('stageback', false)
setProperty("gf.visible", false);
doTweenAlpha("white","white", 0, 1, true);
triggerEvent("Change Character", 'bf', "whitebf")
triggerEvent("Change Character", 'dad', "whitegreen")
doTweenColor('scoreTxt', 'scoreTxt', '000000', 0.01, 'linear');
    setProperty('healthBar.visible', false);
    setProperty('healthBarBG.visible', false);
    setProperty('iconP1.visible', false);
    setProperty('iconP2.visible', false);
end
if curBeat == 300 then
makeLuaSprite("white","white", 0, 0);
setObjectCamera("white", 'hud')
addLuaSprite("white", true);
addLuaSprite('stageback', false)
setProperty("gf.visible", true);
doTweenAlpha("white","white", 0, 1, true);
triggerEvent("Change Character", 'bf', "bf")
triggerEvent("Change Character", 'dad', "impostor3")
    doTweenColor('scoreTxt', 'scoreTxt', '228B22', 0.01, 'linear');
setProperty('healthBar.visible', true);
    setProperty('healthBarBG.visible', true);
    setProperty('iconP1.visible', true);
    setProperty('iconP2.visible', true);
end
if curBeat == 304 then
makeLuaSprite("white","white", 0, 0);
setObjectCamera("white", 'hud')
addLuaSprite("white", true);
removeLuaSprite('stageback', false)
setProperty("gf.visible", false);
doTweenAlpha("white","white", 0, 1, true);
triggerEvent("Change Character", 'bf', "whitebf")
triggerEvent("Change Character", 'dad', "whitegreen")
doTweenColor('scoreTxt', 'scoreTxt', '000000', 0.01, 'linear');
    setProperty('healthBar.visible', false);
    setProperty('healthBarBG.visible', false);
    setProperty('iconP1.visible', false);
    setProperty('iconP2.visible', false);
end
if curBeat == 364 then
makeLuaSprite("white","white", 0, 0);
setObjectCamera("white", 'hud')
addLuaSprite("white", true);
addLuaSprite('stageback', false)
setProperty("gf.visible", true);
doTweenAlpha("white","white", 0, 1, true);
triggerEvent("Change Character", 'bf', "bf")
triggerEvent("Change Character", 'dad', "impostor3")
    doTweenColor('scoreTxt', 'scoreTxt', '228B22', 0.01, 'linear');
setProperty('healthBar.visible', true);
    setProperty('healthBarBG.visible', true);
    setProperty('iconP1.visible', true);
    setProperty('iconP2.visible', true);
end
if curBeat == 368 then
makeLuaSprite("white","white", 0, 0);
setObjectCamera("white", 'hud')
addLuaSprite("white", true);
removeLuaSprite('stageback', false)
setProperty("gf.visible", false);
doTweenAlpha("white","white", 0, 1, true);
triggerEvent("Change Character", 'bf', "whitebf")
triggerEvent("Change Character", 'dad', "whitegreen")
doTweenColor('scoreTxt', 'scoreTxt', '000000', 0.01, 'linear');
setProperty('healthBar.visible', false);
setProperty('healthBarBG.visible', false);
setProperty('iconP1.visible', false);
setProperty('iconP2.visible', false);
end
if curBeat == 400 then
makeLuaSprite("white","white", 0, 0);
setObjectCamera("white", 'hud')
addLuaSprite("white", true);
addLuaSprite('stageback', false)
setProperty("gf.visible", false);
setProperty("boyfriend.visible", false);
doTweenAlpha("white","white", 0, 1, true);
triggerEvent("Change Character", 'bf', "bf")
triggerEvent("Change Character", 'dad', "impostor3")
    doTweenColor('scoreTxt', 'scoreTxt', '228B22', 0.01, 'linear');
setProperty('healthBar.visible', true);
setProperty('healthBarBG.visible', true);
setProperty('iconP1.visible', true);
setProperty('iconP2.visible', true);
characterPlayAnim('dad', 'liveReaction', '24', true);
setProperty('dad.specialAnim', true);
end
if curBeat == 408 then
makeLuaSprite("black","black", 0, 0);
setObjectCamera("black", 'hud')
addLuaSprite("black", true);
scaleLuaSprite('black', 1533., 888.)
end
end