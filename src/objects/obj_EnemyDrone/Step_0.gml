/// @description Insert description here
// You can write your code in this editor

// Initiates running time
RunningTime++;

// Starts patrol state after reaching starting point
if (distance_to_point(x, yPoint) == 0)
{
	RunningTime = 0;
	DroneState = MovementState.PATROL;
}

if (instance_exists(obj_Player))
{
	if (distance_to_object(obj_Player) < (300*(1 + 0.05 * global.Level)))
	{
		DroneState = MovementState.CHASE;
	}
}




switch (DroneState)
{
case MovementState.PATROL:
	if (RunningTime < DronePatrolTimer)
	{
		// Move to a random direction while running time has not reached patrol time
		move_towards_point(xPatrolRandom, yPatrolRandom, DroneSpeed);
	}
	else
	{
		// Resets time and changes state when running time reaches patrol time
		DroneState = MovementState.IDLE;
		RunningTime = 0;
	}
	break;
case MovementState.IDLE:
	if (RunningTime < DroneIdleTimer)
	{
		// Stops drone while running time has not reached idle time
		speed = 0;
	}
	else
	{
		// Resets time and changes state to patrol when running time reaches idle time
		DroneState = MovementState.PATROL;
		RunningTime = 0;
		// Sets a new random direction for the next patrol state
		xPatrolRandom = random(room_width);
		yPatrolRandom = random(room_height);
	}
	break;
// Chases player and self-destructs at a timer
case MovementState.CHASE:
	SelfDestructTimer++;
	// Flickers the color to indicate self-destructing
	image_blend =  choose(c_red, c_white);
	if (instance_exists(obj_Player))
	{
		var PlayerDir = point_direction(x, y, obj_Player.x, obj_Player.y);
	}
	motion_add(PlayerDir, DroneSpeed*2);
	if (SelfDestructTimer > 100)
	{
		// If the timer has been reach explodes
		instance_destroy();
	}
	if (!audio_is_playing(sfx_DroneCountdown))
	{
		audio_play_sound(sfx_DroneCountdown,1,false);
	}
	break;
}
	
// Limits speeds	
speed = clamp(speed, 0, DroneSpeed*2);

// Bottom border collision
if (y > room_height - 40) 
{
	y = room_height - 40;
	speed = 0;
}


// Sets pov to current direction
if (direction > 90 && direction < 270)
{
	// If moving to the left, look left
	image_angle = 180;
}
else
{
	// If moving to the right, look right
	image_angle = 0;
}