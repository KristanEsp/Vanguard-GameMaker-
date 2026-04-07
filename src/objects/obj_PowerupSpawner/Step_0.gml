/// @description Limit powerup
// You can write your code in this editor



// Stops respawn timer if powerup is present
if (instance_exists(obj_Powerup))
{
	alarm_set(0,PowerupTimer);
}

