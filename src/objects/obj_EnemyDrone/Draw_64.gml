/// @description Insert description here
// You can write your code in this editor

// Event not inherited to change minimap settings
event_inherited();
if (IconSprite != noone)
{
	draw_sprite_ext(IconSprite, 0, MinimapXOffset + x * 0.125, MinimapYOffset + y * 0.17, 1,1,image_angle,c_white,image_alpha);
}
