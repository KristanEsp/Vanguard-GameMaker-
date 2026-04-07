/// @description Insert description here
// You can write your code in this editor

if (room == rm_MainMenu)
{
	if (!obj_MainMenuManager.doPresentControls && !obj_MainMenuManager.doPresentCredits)
	{
		draw_sprite_ext(spr_MainMenu,1,580,360,1,1,0,c_white,0.5);
	}
	else if (obj_MainMenuManager.doPresentControls)
	{
		draw_sprite_ext(spr_MainMenuControls,1,435,200,1,1,0,c_white,0.5);
	}
	else
	{
		draw_sprite_ext(spr_MainMenuCredits,1,435,200,1,1,0,c_white,0.5);
	}
}





if (room == rm_Game)
{
	draw_sprite_ext(spr_GameUIBase,1,0,0,1,1,0,c_white,1);
}
