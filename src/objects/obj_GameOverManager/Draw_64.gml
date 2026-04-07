/// @description Insert description here
// You can write your code in this editor

draw_set_valign(fa_middle);
draw_set_halign(fa_center)

// Draw the game over text
draw_set_font(fnt_Verdana);
draw_set_color(c_white);
draw_text(room_width/2, room_height/2 - 150, "Game Over");
draw_set_font(fnt_Score);

// Draw the final score
draw_set_font(fnt_Score);
draw_set_color(choose(c_white,c_yellow));
draw_text(room_width/2, room_height/2, "Final Score: " + string(score));

// Draws the final number of rescued humans
draw_sprite_ext(spr_IconRescuedHuman,0 ,room_width/2 - 60, room_height/2 + 90, 5, 5, 0, c_white, 1);
draw_set_color (c_white);
draw_text(room_width/2 - 25, room_height/2 + 100, "x" + string(obj_RescueEvent.RescuedHumanCount));
// Draws the final number of abducted humans
draw_sprite_ext(spr_IconAbductedHuman,0 , room_width/2 + 40, room_height/2 + 90, 5, 5, 0, c_white, 1);
draw_set_color (c_white);
draw_text(room_width/2 + 75, room_height/2 + 100, "x" + string(instance_number(obj_AbductedHuman)));


if (isGameOverShown)
{
	// Ask user to either replay the game or exit
	draw_set_font(fnt_Score);
	draw_set_color(c_white);
	draw_text(room_width/2, room_height/2 + 200, "Replay");

	// Select options
	draw_set_font(fnt_Score)
	// Creates a for loop to visually create main menu
	for (var i = 0; i < array_length(menu); i++)
	{
		draw_set_color(c_white);
		// Change color if that specific option is chosen
		if (i = MenuSelection)
		{
			draw_set_color(c_red);
		}
		// Need to add + index * 40 to prevent overlap
		draw_text((room_width/2 - 50) + (i*100), room_height/2 + 250, menu[i])
	}
}



