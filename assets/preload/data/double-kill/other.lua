function onCreatePost()
setProperty('icon3.alpha', 0)
end
function onUpdate(elapsed)
if getProperty('icon3.alpha', 1) then
setHealthBarColors('3A1B4F', '31B0D0') 
end 
if getProperty('iconP2.visible', true) then 
setHealthBarColors('D1D2F8', '31B0D0')
end

end

