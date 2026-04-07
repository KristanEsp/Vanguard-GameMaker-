/// @description Insert description here
// You can write your code in this editor


// Prompts extra life each 20,000 points
if (isExtraLife)
{
	if ((room == rm_Game || room == rm_Swarm) && instance_exists(obj_Player))
	{
		// If in game prompt extra life at Player
		draw_set_color(c_white);
		draw_text(obj_Player.x - 25, obj_Player.y - 50, "+");
		draw_sprite_ext(spr_IconPlayer, 0, obj_Player.x, obj_Player.y - 50, 2, 2, 0, c_white, 1);
	}
	else
	{
		// If extra life during intermission screen
		draw_set_color(c_white);
		draw_text(room_width/2 - 25, room_height/2 + 255, "+");
		draw_sprite_ext(spr_IconPlayer, 0, room_width/2 + 10, room_height/2 + 245, 2, 2, 0, c_white, 1);
	}
	if (!audio_is_playing(sfx_ExtraHealth))
	{
		audio_play_sound(sfx_ExtraHealth,1,false);
	}
}


