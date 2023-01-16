function onCreate()
makeLuaSprite('casa','nocachounu/ae',-900,-300)
addLuaSprite('casa',false)
makeLuaSprite('comillo','nocachounu/dospuntosube',-400,200)
addLuaSprite('comillo',true)
setScrollFactor('rock', 0.8, 0.8);
makeLuaSprite('su','nocachounu/lampara',800,-104)
addLuaSprite('su',true)
makeLuaSprite('sus','nocachounu/deltarunereference',-1000,-44)
addLuaSprite('sus',true)
makeAnimatedLuaSprite('coso', 'nocachounu/luz', -500, 44)
scaleObject('coso',4,4)
addAnimationByPrefix('coso', "light", "light", 24, true)
objectPlayAnimation("coso", "light")
addLuaSprite('coso',false)
makeLuaSprite('aok','ezkiso1',-100,-100)
scaleObject('aok',0.8,0.8)
addLuaSprite('aok',true)
setProperty('aok.alpha',0)
setObjectCamera('aok', 'other')
makeLuaSprite('aei','ezkiso2',-100,-100)
scaleObject('aei',0.8,0.8)
addLuaSprite('aei',true)
setProperty('aei.alpha',0)
setObjectCamera('aei', 'other')
makeLuaSprite('ou','ezkiso3',-100,-100)
scaleObject('ou',0.8,0.8)
addLuaSprite('ou',true)
setProperty('ou.alpha',0)
setObjectCamera('ou', 'other')
setProperty('camHUD.alpha', 0);
setProperty('sus.alpha', 0);
setProperty('su.alpha', 0);
setProperty('comillo.alpha', 0);
setProperty('casa.alpha', 0);
setProperty('pasenversiculosdelabiblia.alpha', 0);
makeLuaSprite('nigger', '', 0, 0);
makeGraphic('nigger',1280,720,'EB115E')
addLuaSprite('nigger', true);
setObjectCamera('nigger', 'other')
setLuaSpriteScrollFactor('nigger',0,0)
setProperty('nigger.scale.x',2)
setProperty('nigger.scale.y',2)
setProperty('nigger.alpha', 0);
makeLuaSprite('privi', '', 0, 0);
makeGraphic('privi',1280,720,'EB115E')
addLuaSprite('privi', true);
setObjectCamera('privi', 'other')
setLuaSpriteScrollFactor('privi',0,0)
setProperty('privi.scale.x',2)
setProperty('privi.scale.y',2)
setProperty('privi.alpha', 0);
end
function onBeatHit()
if curBeat == 16 then
setProperty('aok.alpha', 0.4);
end
if curBeat == 20 then
setProperty('aok.alpha', 0);
setProperty('aei.alpha', 0.4);
end
if curBeat == 24 then
setProperty('aei.alpha', 0);
setProperty('ou.alpha', 0.4);
end
if curBeat == 30 then
doTweenAlpha('ou', 'ou', 0, 1, 'linear');
doTweenAlpha('pasenversiculosdelabiblia', 'pasenversiculosdelabiblia', 1, 2, 'linear');
doTweenAlpha('camHUD', 'camHUD', 1, 2, 'linear');
end
if curBeat == 67 then
doTweenAlpha('sus', 'sus', 0.8, 1, 'linear');
doTweenAlpha('su', 'su', 1, 1, 'linear');
doTweenAlpha('casa', 'casa', 1, 1, 'linear');
doTweenAlpha('comillo', 'comillo', 1, 1, 'linear');
setProperty('gf.alpha', 0);
setProperty('dad.alpha', 1);
end
if curBeat == 497 then
doTweenAlpha('nigger', 'nigger', 1, 1, 'linear');
doTweenAlpha('privi', 'privi', 1, 0.2, 'linear');
end
if curBeat == 450 then
doTweenAlpha('privi', 'privi', 0, 1, 'linear');
end
end