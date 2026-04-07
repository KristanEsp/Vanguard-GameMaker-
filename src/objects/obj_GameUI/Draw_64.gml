/// @description Game UI
// You can write your code in this editor


draw_set_font(fnt_Score);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);

if (room == rm_Game || room == rm_Swarm)
{
	with (obj_Shield)
	{
		// Sets the bar if the shields respawn timer is at its default value
		if (ShieldRespawnTimer == 500)
		{
			// Draw the shield cooldown bar
			draw_set_color(c_aqua);
			var BarWidth;
			BarWidth = 2.6;
			// Fills up the bar
			draw_rectangle(52, 82, 52 + (Timer/BarWidth), 82 + 30,false);
			// Create the rectangle border
			draw_sprite(spr_ShieldBar,0,40,70);
		}
		else
		{
			// Draw the shield cooldown bar when powered up
			draw_set_color(choose(c_aqua,c_white));
			var BarWidth;
			BarWidth = 1.3;
			// Fills up the bar
			draw_rectangle(52, 82, 52 + (Timer/BarWidth), 82 + 30,false);
			// Create the rectangle border
			draw_sprite(spr_ShieldBar,0,40,70);
		}
	}
	draw_sprite_ext(spr_ShieldIcon, 0, 5, 75, 5, 5, 0, c_white, 1);
	
	// Draws number of lives top left of game using icons

	for (var i = 0; i < lives; i++)
	{
		draw_sprite_ext(spr_IconPlayer,0 , 50 + (50*i), 32, 2, 2, 0, c_white, 1);
	}
	// Draws the number of bombs left
	for (var j = 0; j < global.BombCount; j++)
	{
		draw_sprite_ext(spr_IconBomb, 0, 325, 30 + (40*j), 1.5, 1.5, 0, c_white, 1);
		
	}
	
	// Sets the bar for bomb replenish based on player's distance travelled
	with (obj_PlayerManager)
	{
		// Draw the bomb bar 
		// If Bomb refresh is normal
		if (!obj_PlayerManager.isBombRefreshUpgrade)
		{
			draw_set_color(c_yellow);
			var BarWidth = 200; 
			// Fills up the bar
			draw_rectangle(350, 125, 355, 125 - (DistanceTravelled/BarWidth),false);
			// Create the rectangle border
			draw_rectangle(350, 125, 355, 125 - (obj_PlayerManager.BombDistanceRequirement/BarWidth),true);
		}
		else
		{
			// If bomb refresh is rapid (when friendship count is 3) glows the bar
			draw_set_color(choose(c_yellow,c_white));
			var BarWidth = 100; 
			// Fills up the bar
			draw_rectangle(350, 125, 355, 125 - (DistanceTravelled/BarWidth),false);
			// Create the redctangle border
			draw_rectangle(350, 125, 355, 125 - (obj_PlayerManager.BombDistanceRequirement/BarWidth),true);
		}
		
			
	}
	
	// Draws the score
	draw_set_font(fnt_Score);
	// Change color animation of score text during score calculation
	if (score < obj_GameManager.TempScore)
	{
		draw_set_color (choose(c_white, c_yellow));
	}
	else
	{
		draw_set_color (c_white);
	}
	draw_text(1150, 75, string(score));
	
	// Draws the number of rescued humans
	draw_sprite_ext(spr_IconRescuedHuman,0 , 1090, 125, 5, 5, 0, c_white, 1);
	draw_set_color(c_white);
	draw_text(1120, 135, "x" + string(obj_RescueEvent.RescuedHumanCount));
	// Draws the number of abducted humans
	draw_sprite_ext(spr_IconAbductedHuman,0 , 1180, 125, 5, 5, 0, c_white, 1);
	draw_set_color(c_white);
	if (obj_AbductEvent.isSwarmLevel && !obj_AbductEvent.isSwarmSuccess)
	{
		// Flashes abducted human count to indicate swarm level is coming
		draw_set_color(choose(c_white,c_red));
	}
	draw_text(1210, 135, "x" + string(instance_number(obj_AbductedHuman)));

	
	// Draw Minimap borders (Scaled based on level room increase)
	if (global.Level < 10)
	{
		draw_set_color(c_white);
	}
	else
	{
		draw_set_color(c_orange);
	}
	// Scales with the increase room size per level
	draw_line(440 - (2.5*global.Level), 0, 440 - (2.5*global.Level), 150);
	draw_line(900 + (3*global.Level), 0, 900 + (3*global.Level), 150);
}



// Log codes !!!

//if (obj_GameManager.isScoreCalculate)
//{
//	draw_set_font(fnt_Score);
//	draw_text(675, 140, string(score));
//}

//draw_text(64, 42, "Respawn Timer: " + string(alarm));

//with (obj_Player)
//{
//	//draw_text(64, 52, "Speed: " + string(speed));
//	//draw_text(64, 122, "LaserCharge: " + string(alarm_get(1)));
//	draw_text(64, 130, "Carry Amount: " + string(isCarryingHuman));
//}

//with (obj_EnemyUFO)
//{
//	draw_text(64, 62, "RunningTime: " + string(RunningTime));
//	draw_text(64, 72, "Direction: " + string(direction));
//}

//draw_text(64, 82, "Position(x): " + string(obj_PlayerManager.PlayerX));
//draw_text(64, 92, "Position(y): " + string(obj_PlayerManager.PlayerY));


//with (obj_PowerupSpawner)
//{
//	draw_text(64, 112, "Powerup: " + string(alarm));
//}

//with (obj_EnemyUFOSpawner)
//{
//	draw_text(64, 200, "Depleted: " + string(isDepleted));
//	draw_text(64, 172, "UFO: " + string(UFOCount));
//}
//draw_text(64, 152, "Ship: " + string(instance_number(obj_EnemyShip)));
//draw_text(64, 162, "Drone: " + string(instance_number(obj_EnemyDrone)));