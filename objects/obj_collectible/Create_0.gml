/// @description Values

	//Load data from the save file
	ini_open(global.collectible_save);
		collected = ini_read_real((string(obj_level.stage_name) + " " + string(obj_level.act)), string(collectible_id), false);
	ini_close();
	
	//Don't forget to setup id of the collectible
	if(collectible_id == -1) collected = false;
	