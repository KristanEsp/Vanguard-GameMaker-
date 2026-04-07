/// @description Insert description here
// You can write your code in this editor

event_inherited()

// Chases the player
if (distance_to_point(InitialApproachX, InitialApproachY) == 0)
{
	// After reaching initial approach point directly chase the player
	DroneState = MovementState.CHASE;
}

if (distance_to_object(obj_Player) > 200)
{
	// If the gap increases, update the initial approach point and re-approach player
	InitialApproachX = random_range(obj_Player.x - 300, obj_Player.x + 300);
	InitialApproachY = random_range(obj_Player.y - 300, obj_Player.y + 300);
	isChasePlayer = false;
}

if (!isChasePlayer)
{
	// Approaches player from the chosen initial approach point
	var InitialDir = point_direction(x, y, InitialApproachX, InitialApproachY);
	motion_add(InitialDir, DroneSpeed);

}
