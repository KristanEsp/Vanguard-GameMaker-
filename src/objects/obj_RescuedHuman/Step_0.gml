/// @description Insert description here
// You can write your code in this editor

// Places the Rescued human to the station
if (!isSuccessfullyRescued)
{
	xLoc = random_range(110,350);
	yLoc = choose (530,680);
	isSuccessfullyRescued = true;
}

x = xLoc
y = yLoc

// Only visible when in game room
if (room == rm_Game)
{
	sprite_index = spr_RescuedHuman;
}
else
{
	sprite_index = noone;
}