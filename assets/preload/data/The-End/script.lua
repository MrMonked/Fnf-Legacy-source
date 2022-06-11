function onEndSong()
	if not allowEnd and isStoryMode then
		startVideo('tordend');
		allowEnd = true;
		return Function_Stop;
	end
	return Function_Continue;
end