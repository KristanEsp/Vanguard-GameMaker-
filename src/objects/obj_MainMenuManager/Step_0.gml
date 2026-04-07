/// @description Insert description here
// You can write your code in this editor

// Menu Controls
UpKey = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));;
DownKey = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));;
SelectKey = keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left);

// Choose menu with up and down keys
// Prevents user from moving the currently chosen option after pressing the select key
if (alarm == -1)
{
	if (UpKey && MenuSelection > 0)
	{
		MenuSelection--;
		audio_play_sound(sfx_MenuChoose,1,false);
	}
	if (DownKey && MenuSelection < 3)
	{
		MenuSelection++;
		audio_play_sound(sfx_MenuChoose,1,false);
	}
}


if (SelectKey)
{
	// Creates a short delay input timer
	alarm_set(0, DelayTimer)


}

// Exits control menu by pressing any key besides the select key
if (doPresentControls || doPresentCredits)
{
	if (keyboard_check_pressed(vk_anykey) && !SelectKey)
	{
		doPresentControls = false;
		doPresentCredits = false;
	}
}

// Camera movement
x += 2/5
camera_set_view_pos(view_camera[0], x-(camWidth*0.5), y-(camHeight*0.5));

if (alarm != -1 && MenuSelection == 0)
{
	if (!audio_is_playing(sfx_MenuStartGame))
	{
		audio_play_sound(sfx_MenuStartGame,1,false);
	}
}

if (!audio_is_playing(music_Raiders_of_the_dying_worlds))
{
	audio_play_sound(music_Raiders_of_the_dying_worlds,5,true);
}


