/// @description Insert description here
// You can write your code in this editor

// Rescue step event occurs after collision with player
if (instance_exists(obj_Player))
{
	if (!obj_Player.isCarryingHuman)
	{
		isRescue = true;
	}
}
