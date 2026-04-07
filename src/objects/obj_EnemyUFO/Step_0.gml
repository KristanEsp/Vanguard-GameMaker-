/// @description Pathing Movement
// You can write your code in this editor

// Initiates Running time based on delta time
RunningTime += delta_time/1000000;

// Perform pathing if not abducting humans
if (distance_to_point(x, yPoint) == 0)
{
	// Sets time to 0 to begin pathing
	RunningTime = 0;
}

// Performs a zigzag pathing on the randomly chosen direction
switch (State)
{
case DirectionState.LEFT:
	// Direction changes after each PathTime
	if (RunningTime > PathTime && isUp)
	{
		// Moves diagonally down
		direction = 135;
		RunningTime = 0;
		isUp = false;
		break;
	}
	if (RunningTime > PathTime && !isUp)
	{
		// Moves diagonally up
		direction = 225;
		RunningTime = 0;
		isUp = true;
		break;
	}
case DirectionState.RIGHT:
	if (RunningTime > PathTime && isUp)
	{
		direction = 45;
		RunningTime = 0;
		isUp = false;
		break;
	}
	if (RunningTime > PathTime && !isUp)
	{
		direction = 315;
		RunningTime = 0;
		isUp = true;
		break;
	}
}

// Shoots a projectile when an upgrade is received (after reaching 5 abducted humans)
if (obj_AbductEvent.isUFOPowerup2)
{
	if (EnemyProjectileCharged && distance_to_object(obj_Player) < 500)
	{
		// Shoots projectile and reset charge timer
		var EnemyProjectile = instance_create_layer(x,y,layer,obj_UFOLaser);
		EnemyProjectile.direction = point_direction(x,y,obj_Player.x, obj_Player.y);
		EnemyProjectile.image_angle = point_direction(x,y,obj_Player.x, obj_Player.y);
		EnemyProjectile.speed = 7*(1 + 0.05 * global.Level);;
		// Frame animation when engaging player
		EnemyProjectileCharged = false;
		alarm_set(1, EnemyProjectileChargeTimer);
	}
}

// Prevent going outside the room
if (y < 150)
{
	move_towards_point(x, yPoint, UFOspeed);
}
else if (y > room_height)
{
	move_towards_point(x, yPoint, UFOspeed);
}

if (x < 500)
{
	// When near left border move to the right
	State = DirectionState.RIGHT
}
else if (x > room_width - 600)
{
	// When near right border move to the left
	State = DirectionState.LEFT
}