/// @description Player manager (Respawn, camera, bomb)
// You can write your code in this editor
if (room == rm_Game || room == rm_Swarm)
{
	if (isBombRefreshUpgrade)
	{
		BombDistanceRequirement = 10000;
	}
	else
	{
		BombDistanceRequirement = 20000;
	}


	if (instance_exists(obj_Player))
	{
		// Tracks player current coordinates
		PlayerX = obj_Player.x;
		PlayerY = obj_Player.y;

		// Counts the distance travelled (Stops the count when level is complete to avoid mechanic abuse)
		if (!instance_exists(obj_Warp))
		{
			DistanceTravelled += obj_Player.speed
		}

		// Camera follows player
		CameraX = PlayerX;
		CameraY = PlayerY;
	}
	// Camera movement
	x += (CameraX - x)/5
	y += (CameraX - y)/5
	camera_set_view_pos(view_camera[0], x-(camWidth*0.5), y-(camHeight*0.5));



	// Replenishes bomb if distance travelled amount has been achieved
	if (global.BombCount < 3 && DistanceTravelled > BombDistanceRequirement)
	{
	
		global.BombCount++;
		DistanceTravelled = 0;
	}
	// Caps the maximum carried bomb by 3 by stopping distance travelled counter
	else if (global.BombCount == 3 && (DistanceTravelled < BombDistanceRequirement && DistanceTravelled > BombDistanceRequirement - 100))
	{
		DistanceTravelled = BombDistanceRequirement - 50;
	}


	if (!instance_exists(obj_Player) && lives > 0)
	{
		instance_create_layer(PlayerX,PlayerY,layer,obj_Player);
		//Pause = true;
		// Boolean to destroy carried human on player death
		isDestroyed = true;
	}
	else
	{
		isDestroyed = false;
	}

	// Game over when life reaches zero to post the game over screen
	if (lives = 0)
	{
		// Goes to the game over room when lives are depleted
		room_goto(rm_GameOver);
	}
}