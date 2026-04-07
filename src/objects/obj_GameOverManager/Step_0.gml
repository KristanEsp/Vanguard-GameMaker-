/// @description Insert description here
// You can write your code in this editor

// Menu Controls
LeftKey = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));;
RightKey = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));;
SelectKey = keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left);


Timer++;
if (Timer > GameOverTimer)
{
	isGameOverShown = true;
}


if (isGameOverShown)
{
	if (LeftKey && MenuSelection > 0)
	{
		MenuSelection--;
	}
	if (RightKey && MenuSelection < 1)
	{
		MenuSelection++;
	}


	// Switch statement when player chooses the option with spacebar
	if (SelectKey)
	{
		switch(MenuSelection)
		{
			case 0:
			// Deactivates all and resets the game to the main menu
				instance_deactivate_all(false);
				room_goto(rm_MainMenu);
				break;
			case 1:
			// Close the game
				game_end();
				break;
		}
	}
}
else
{
	if (!audio_is_playing(sfx_GameOver))
	{
		audio_play_sound(sfx_GameOver,1,false);
	}
}