function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'mirafg', -2000, -50);
	scaleObject('stageback', 1.2,1.2);
	


	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
	
	end

	addLuaSprite('stageback', false);
	
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end