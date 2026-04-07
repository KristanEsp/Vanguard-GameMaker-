/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_Player))
{
	// Snaps shield to the player
	move_towards_point(obj_Player.x,obj_Player.y,obj_Player.speed);
}



// Shield flicker
image_alpha = clamp(image_alpha + choose (-0.01, 0.01), 0.25, 0.5);

if (sprite_index == noone)
{
	// Start timer when object is invisible
	Timer ++;
}
else if (sprite_index == spr_Shield && ShieldRespawnTimer == 500)
{
	// Sets the timer to 500 when shield respawn timer is at its default value of 500
	Timer = 500;
}
else
{
	// Sets the timer equal to 250 when obj_FriendShip number 3 is present to properly scale UI bar
	Timer = 250;
}
if (Timer > ShieldRespawnTimer)
{
	// Brings back shield when timer reaches RespawnTimer
	sprite_index = spr_Shield;
	audio_play_sound(sfx_ShieldUp,1,false);
}