/// @description Insert description here
// You can write your code in this editor


// Human stops falling when it reaches the bottom
if (!isAbducted && distance_to_point(x,room_height) < 10)
{
	speed = 0;
	
	isRescue = false;
	
	
}



// Human object follows Player after player collision event has occured
if (isRescue && instance_exists(player))
{
	obj_Player.isCarryingHuman = true;
	move_towards_point(obj_Player.x,obj_Player.y + 15,obj_Player.speed);

}

// Successfully saved if carried to the ally drop-off point
if (distance_to_point(250, y) < 200)
{

	// Changes Friend Human into a Rescued Human (false to keep the count of human at the end of the round). 
	instance_change(obj_RescuedHuman, false);
	// Gives player extra 500 points
	obj_GameManager.OtherScore += 500;
	obj_RescueEvent.doExtraScore = true;
	obj_RescueEvent.RescuedHumanCount++;
	if (instance_exists(obj_Player))
	{
		obj_Player.isCarryingHuman = false;
	}
	audio_play_sound(sfx_RescueSound,1,false);
	

}

// Abducted if carried to the enemy drop-off point
if (distance_to_point(room_width - 250, y) < 50)
{
	instance_change(obj_AbductedHuman, true);
	audio_play_sound(sfx_AbductionSuccess,1,false);
}

//If human dies will being rescued, adds to the enemy's AbductedHuman count
if (isRescue && obj_PlayerManager.isDestroyed)
{
	isRescue = false;
	obj_Player.isCarryingHuman = false;
	
	instance_change(obj_AbductedHuman, true);
	//instance_destroy();
	audio_play_sound(sfx_HumanDeath,1,false);
}


