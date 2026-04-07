/// @description Spawn Powerup
// You can write your code in this editor

// Creates powerup when timer runs out at a random room location. Stop spawning at the end of the round
if (!instance_exists(obj_Warp))
{
	instance_create_layer(
					random_range(200, room_width-700), 
					random_range(175, room_height-100),
					layer,
					obj_Powerup
					);
}

