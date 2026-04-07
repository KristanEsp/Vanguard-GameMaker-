/// @description Spawns all 5 humans
// You can write your code in this editor



HumanMaxCount = 5;
obj_GameManager.HumanCount = HumanMaxCount;

// Creates 5 humans at 30%,40%,50%,60%,70% of room width
for (i = 0; i < HumanMaxCount; i ++)
{
	// First, matches the increase in room width size per level then calculates location at 30%-80% of calculated width
	instance_create_layer((room_width+(50*global.Level))*(0.25 + 0.125*i), room_height-25, layer, obj_FriendHuman);
}
