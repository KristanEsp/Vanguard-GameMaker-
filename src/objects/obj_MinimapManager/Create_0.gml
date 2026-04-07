/// @description Insert description here
// You can write your code in this editor

IconSprite = noone;
// Match the increases room size per level
if (global.Level <= 20)
{
	MinimapXOffset = 450 - (2.5*global.Level);
}
else
{
	MinimapXOffset = 400;
}
MinimapYOffset = 0;