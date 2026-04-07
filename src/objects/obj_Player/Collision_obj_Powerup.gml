/// @description Insert description here
// You can write your code in this editor

global.Powerup++;

instance_destroy(other);

audio_play_sound(sfx_PowerUp,1,false);

// If Powerup is max then further powerups will give player 1000 score instead
if (global.Powerup > 10)
{
	obj_GameManager.OtherScore += 1000;
	obj_GameUI.doExtraScore = true;
}



