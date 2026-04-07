/// @description Insert description here
// You can write your code in this editor

if (room == rm_Game || room == rm_Swarm)
{
	// Draws the game's top border
	if (global.Level < 10)
	{
		draw_set_color(c_white);
	}
	else
	{
		draw_set_color(c_orange);
	}
	draw_line(0, 150, room_width, 150);

}

if (doExtraScore && instance_exists(obj_Player))
{
	draw_set_font(fnt_Score);
	draw_set_color(choose(c_red, c_green, c_blue));
	draw_text(obj_Player.x, obj_Player.y - 50, "1000");
	if (!audio_is_playing(sfx_PowerUpMax))
	{
		audio_play_sound(sfx_PowerUpMax,1,false);
	}
}







// draw_arrow(100, room_height/2, 200, room_height/2, 100);

