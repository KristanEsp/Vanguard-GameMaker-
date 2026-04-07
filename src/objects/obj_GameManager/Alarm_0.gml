/// @description Timer for next round info
// You can write your code in this editor


if (obj_AbductEvent.isSwarmLevel && !obj_AbductEvent.isSwarmSuccess)
{
	// Enter swarm room
	room_goto(rm_Swarm);
	global.Level++;
}
else
{
	// Enter the next level if no swarm event
	room_goto(rm_Game);
	global.Level++;
}