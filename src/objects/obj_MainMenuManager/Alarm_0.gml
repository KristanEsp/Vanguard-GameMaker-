/// @description Switch menu 
// You can write your code in this editor

// Switch statement when player chooses the option with spacebar
// Option gets selected after alarm is finished
switch(MenuSelection)
	{
	case 0:
		//doPrepareFirstLevel = true;
		room_goto(rm_Game);
		break;
	case 1:
		doPresentControls = true;
		break;
	case 2:
		doPresentCredits = true;
		break;
	case 3:
		game_end(); // game_end terminates the game
		break;
	}


