/// @description Insert description here
// You can write your code in this editor


// If friend human reaches the drop off point, prompts 500 points
if (doExtraScore)
{
	DisplayScoreTimer++;
	if (DisplayScoreTimer > 150)
	{
		doExtraScore = false;
		DisplayScoreTimer = 0;
	}
}


var isRally = false;

// For every three rescued humans gain a FriendShip
if (instance_number(obj_RescuedHuman) % 3 == 0 && instance_number(obj_RescuedHuman) != 0)
{

	instance_deactivate_object(obj_RescuedHuman);
	isRally = true;
}

if (isRally)
{
	FriendShipCount ++;
	//instance_create_layer(x,y,layer,obj_FriendShip);
	isRally = false;
}

// Spawns the appropriate amount of FriendShip (Caps at 3 max spawned FriendShips)
if ((instance_number(obj_FriendShip) < FriendShipCount) && FriendShipCount < 4)
{
	instance_create_layer(x,y,layer,obj_FriendShip);
}

// Reduces the FriendShip count when player dies
if ((room == rm_Game || room == rm_Swarm) && obj_PlayerManager.isDestroyed)
{
	FriendShipCount--;
}
// Prevents count from going negative
if (FriendShipCount < 0)
{
	FriendShipCount = 0;
}