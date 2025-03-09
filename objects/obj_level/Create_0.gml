/// @description Setup

	disable_timer = false;
	badnik_chain = 0;
	
	//====================================================//
	//				 **DEFAULT STAGE SETUP**			  //
	//====================================================//
	
	//Set stage music and pitch values
	stage_music = noone;
	stage_pitch = 1.00;
	stage_speedshoes_pitch = 1.25;
		
	//Set level name
	stage_name = "EMPTY LEVEL";
		
	//Set stage act
	act = 1;
		
	//Is next level doing act transition
	act_transition = false;
		
	//Animal array
	animal = [A_FLICKY, A_CUCKY, A_RICKY];
		
	//Next level
	next_level = room;