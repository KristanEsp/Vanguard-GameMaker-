/// @description Insert description here
// You can write your code in this editor

// Places the Rescued human to the station
if (!isSuccessfullyAbducted)
{
	xLoc = random_range(room_width - 110,room_width - 175);
	yLoc = choose (530,680);
	isSuccessfullyAbducted = true;
}

x = xLoc
y = yLoc

// Only visible when in game room
if (room == rm_Game)
{
	sprite_index = spr_AbductedHuman;
}
else
{
	sprite_index = noone;
}


