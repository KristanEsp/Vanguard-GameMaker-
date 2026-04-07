/// @description Draws the drop off zone
// You can write your code in this editor


// When human is dropped to the station, show a score of 500
if (doExtraScore)
{
	draw_set_font(fnt_Score);
	draw_set_color(choose(c_red, c_green, c_blue));
	draw_text(260, 220, "500");
}




