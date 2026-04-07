/// @description Insert description here
// You can write your code in this editor



if (room == rm_Swarm)
{
	obj_AbductEvent.isSwarmLevel = false;
	obj_AbductEvent.isSwarmSuccess = true;
}


// Warps to the next level
room_goto(rm_Intermission);
// Catch up on remaining score count
score = obj_GameManager.TempScore;
obj_GameManager.EnemyScore = 0;
obj_GameManager.LevelScore = score + obj_GameManager.HumanScore;

if (room == rm_Game)
{
	audio_play_sound(sfx_Warp,1,false);
}
else
{
	audio_stop_sound(sfx_Warp);
}

