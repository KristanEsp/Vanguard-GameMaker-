/// @description Intermission screen + ExtraLife Prompt
// You can write your code in this editor

// Draws the score screen during a normal level (non-swarm level)
if (room == rm_Intermission && isScoreCalculate && !isSwarmIntermission)
{
	// Text alignment
	draw_set_font(fnt_Verdana);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center)
	// Draws the score calculation screen
	draw_set_color(choose(c_green, c_teal));
	draw_text(room_width/2, room_height/2 - 150, "Level: " + string(global.Level) + " Complete");
	// Draw UFO sprite and amount of UFOs destroyed in the round
	draw_set_color(c_purple);
	draw_set_font(fnt_Score);
	draw_sprite_ext(spr_IconUFO,0 , room_width/2 - 50, room_height/2 - 60, 5, 5, 0, c_white, 1);
	draw_text(room_width/2, room_height/2 -50, "x" + string(UFOMaxCount));
	// Only display drone count after level 1
	if (global.Level > 1)
	{

		draw_set_color(c_grey);
		draw_sprite_ext(spr_IconDrone,0 , room_width/2 - 50, room_height/2 - 10, 5, 5, 90, c_white, 1);
		draw_text(room_width/2, room_height/2, "x" + string(DroneMaxCount));
	}
	if (global.Level > 2)
	{
		// Draw Ship sprite and amount of Ships destroyed in the round
		draw_set_color(c_maroon);
		draw_sprite_ext(spr_IconShip,0 , room_width/2 - 50, room_height/2 + 40, 5, 5, 0, c_white, 1);
		draw_text(room_width/2, room_height/2 + 50, "x" + string(ShipMaxCount));
	}
	// Draw Human sprite and amount of Humans survived in the round
	draw_set_color (c_lime);
	draw_sprite_ext(spr_IconHuman,0 , room_width/2 - 50, room_height/2 + 90, 5, 5, 0, c_white, 1);
	draw_text(room_width/2 + 27, room_height/2 + 100, "x" + string(HumanCount) + " (+" + string(HumanScore) + ")");
	// Draws the calculated score
	draw_set_color(choose(c_white, c_yellow));
	draw_set_font(fnt_Score);
	draw_text(room_width/2, room_height/2 + 175, "Score: " + string(score));
}
else if (room == rm_Intermission && !isScoreCalculate && (!obj_AbductEvent.isSwarmLevel || obj_AbductEvent.isSwarmSuccess))
{
	// Draws the next level and player lives after pressing any button
	draw_set_font(fnt_Verdana);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_set_color(choose(c_green, c_teal));
	draw_text(room_width/2, room_height/2 - 150, "Level: " + string(global.Level + 1));
	draw_sprite_ext(spr_IconPlayer, 0, room_width/2 - 40, room_height/2, 4, 4, 0, c_white, 1);
	draw_set_font(fnt_Score);
	draw_set_color (c_aqua);
	draw_text(room_width/2 + 17, room_height/2 + 10, "x" + string(lives));
}
else if (room == rm_Intermission && !isScoreCalculate && obj_AbductEvent.isSwarmLevel && !obj_AbductEvent.isSwarmSuccess)
{
	// If swarm event has been triggered, show that next level is a swarm event
	draw_set_font(fnt_Verdana);
	draw_set_color(choose(c_green, c_teal));
	draw_text(room_width/2, room_height/2 - 150, "SWARM");
	draw_sprite_ext(spr_IconPlayer, 0, room_width/2 - 40, room_height/2, 4, 4, 0, c_white, 1);
	draw_set_font(fnt_Score);
	draw_set_color (c_aqua);
	draw_text(room_width/2 + 17, room_height/2 + 10, "x" + string(lives));
	if (!audio_is_playing(sfx_SwarmNext))
	{
		audio_play_sound(sfx_SwarmNext,1,false);
	}
}
else
//if (isSwarmIntermission && isScoreCalculate)
{
	// Prompts that swarm stage was completed
	draw_set_font(fnt_Verdana);
	draw_set_color(choose(c_green, c_teal));
	draw_text(room_width/2, room_height/2 - 150, "SWARM COMPLETE");
	// Prompts the user to press any key to advance to next page
	draw_set_font(fnt_Score);
	draw_set_color(c_white);
	draw_text(room_width/2, room_height/2 + 400, "Press any key to continue...");
}

if (room == rm_Intermission && score == LevelScore && isScoreCalculate)
{
	// Prompts the user to press any key after calculating score to advance to next page (during a normal stage)
	draw_set_font(fnt_Score);
	draw_set_color(c_white);
	draw_text(room_width/2, room_height/2 + 400, "Press any key to continue...");
}



