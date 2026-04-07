/// @description Insert description here
// You can write your code in this editor

with (other)
{
	// If the carried human is dropoped of the ground, change isCarrying to false
	if (distance_to_point(x,room_height) < 10)
	{
		obj_Player.isCarryingHuman = false;
	}
}