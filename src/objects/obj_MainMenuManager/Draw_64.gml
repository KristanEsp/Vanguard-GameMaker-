/// @description Insert description here
// You can write your code in this editor

//// Aligns Text
draw_set_valign(fa_middle);
draw_set_halign(fa_center);

draw_set_font(fnt_Score)
// Creates a for loop to visually create main menu
if (!doPresentControls && !doPresentCredits)
{
	for (var i = 0; i < array_length(menu); i++)
	{
		draw_set_color(c_white);
		// Change color if that specific option is chosen
		if (i = MenuSelection)
		{
			draw_set_color(c_red);
			if (alarm != -1)
			{
				// Flashes chosen selection
				draw_set_color(choose(c_white, c_red));
			}
		}
		// Need to add + index * 40 to prevent overlap
		draw_text(room_width/2, (room_height/2 - 15) + i*40, menu[i])
	}
	draw_set_font(fnt_Verdana);
	draw_set_color(c_white);
	draw_text(room_width/2, room_height/2 - 200, "Vanguard");	
}


if (doPresentControls)
{
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);

	draw_set_font(fnt_Score);
	draw_set_color(c_white);
	draw_text(room_width/2 - 100, room_height/2 - 150, "Move Up: ");
	draw_set_color(c_red);
	draw_text(room_width/2 + 100, room_height/2 - 150, "W / Up Key ");
	draw_set_color(c_white);
	draw_text(room_width/2 - 100, room_height/2 - 100, "Move Left: ");
	draw_set_color(c_red);
	draw_text(room_width/2 + 100, room_height/2 - 100, "A / Left Key ");
	draw_set_color(c_white);
	draw_text(room_width/2 - 100, room_height/2 - 50, "Move Down: ");
	draw_set_color(c_red);
	draw_text(room_width/2 + 100, room_height/2 - 50, "S / Down Key ");
	draw_set_color(c_white);
	draw_text(room_width/2 - 100, room_height/2 , "Move Right: ");
	draw_set_color(c_red);
	draw_text(room_width/2 + 100, room_height/2, "D / Right Key ");
	draw_set_color(c_white);
	draw_text(room_width/2 - 100, room_height/2 + 50, "Shoot: ");
	draw_set_color(c_red);
	draw_text(room_width/2 + 100, room_height/2 + 50, "Spacebar / LMB ");
	draw_set_color(c_white);
	draw_text(room_width/2 - 100, room_height/2 + 100, "Bomb: ");
	draw_set_color(c_red);
	draw_text(room_width/2 + 100, room_height/2 + 100, "Z / RMB ");
	
	draw_set_font(fnt_Score);
	draw_set_color(c_white);
	draw_text(room_width/2, room_height/2 + 200, "Tip: Move to replenish bomb!");
		
}

if (doPresentCredits)
{
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);

	draw_set_font(fnt_Score);
	draw_set_color(c_red);
	draw_text(room_width/2 - 100, room_height/2 - 150, "Sound Effects: ");
	draw_set_color(c_white);
	draw_text(room_width/2 - 90, room_height/2 - 100, "Made by jsfxr.me ");
	draw_set_color(c_red);
	draw_text(room_width/2 - 160, room_height/2 - 50, "Music: ");
	draw_set_color(c_white);
	draw_text(room_width/2 - 5, room_height/2, "Raiders of the dying worlds ");
	draw_text(room_width/2 - 70, room_height/2 + 50 , "Alien AI abduction ")
	draw_text(room_width/2 + 92, room_height/2 + 100, "By Sci-Fi Atmosperhic Music Pack (GameDev)");

	


}
