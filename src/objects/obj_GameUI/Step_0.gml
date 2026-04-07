/// @description Insert description here
// You can write your code in this editor

if (doExtraScore)
{
	DisplayScoreTimer++;
	if (DisplayScoreTimer > 50)
	{
		doExtraScore = false;
		DisplayScoreTimer = 0;
	}
}
