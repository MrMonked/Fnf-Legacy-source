function onCreate()
	-- background shit
	makeLuaSprite('bgsky1', 'bgsky1', -650, -300);
	setScrollFactor('bgsky1', 1.1, 1.0);
	
	makeLuaSprite('bgnormal', 'bgnormal', -580, -300);
	setScrollFactor('bgnormal', 1.0, 1.1);
	scaleObject('bgnormal', 1.3, 1.3);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'stage_light', -125, -100);
		setScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 1.1, 1.1);
		
		makeLuaSprite('blank', 'blank', 1225, -100);
		setScrollFactor('stagelight_right', 0.9, 0.9);
		scaleObject('stagelight_right', 1.1, 1.1);
		setProperty('stagelight_right.flipX', true); --mirror sprite horizontally

		makeLuaSprite('blank', 'blank', -500, -300);
		setScrollFactor('blank', 1.3, 1.3);
		scaleObject('blank', 0.9, 0.9);
	end

	addLuaSprite('bgsky1', false);
	addLuaSprite('bgnormal', false);
	addLuaSprite('blank', false);
	addLuaSprite('blank', false);
	addLuaSprite('blank', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end