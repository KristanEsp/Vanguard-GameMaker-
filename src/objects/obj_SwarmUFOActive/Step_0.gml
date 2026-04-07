/// @description Insert description here
// You can write your code in this editor

// Event Not inherited


// Chases the player

if (distance_to_point(InitialApproachX, InitialApproachY) == 0)
{
	// After reaching initial approach point directly chase the player
	isChasePlayer = true;
}

if (distance_to_object(obj_Player) > 200)
{
	// If the gap between UFO and player distance increases, update the initial approach point and re-approach player
	InitialApproachX = random_range(obj_Player.x - 300, obj_Player.x + 300);
	InitialApproachY = random_range(obj_Player.y - 300, obj_Player.y + 300);
	isChasePlayer = false;
}

if (!isChasePlayer)
{
	// Approaches player from the chosen initial approach point
	var InitialDir = point_direction(x, y, InitialApproachX, InitialApproachY);
	motion_add(InitialDir, UFOactiveSpeed*2);

}
else
{
	// Directly chases the player after reaching the approach point
	var PlayerDir = point_direction(x, y, obj_Player.x, obj_Player.y);
	motion_add(PlayerDir, UFOactiveSpeed*2);
}
	

if (speed > UFOActiveMaxSpeed)
{
	speed = UFOActiveMaxSpeed;
}

