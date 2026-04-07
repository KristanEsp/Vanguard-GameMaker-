/// @description Patrol and attack events
// You can write your code in this editor

EnemyShipDir = image_angle;

if (!isPatrol)
{
	// Move to starting patrol location
	move_towards_point(x_start, y_start, EnemyShipSpeed);
}
if (distance_to_point(x_start, y_start) == 0)
{
	// Initiates patrol after reaching starting position
	isPatrol = true;
}
if (isPatrol)
{
	// Moves horizontally on the randomly chosen direction (0 or 180).
	motion_add(EnemyShipDir, EnemyShipSpeed);
}

// While in range of player, follows player and shoots laser projectiles
if (instance_exists(obj_Player))
{
	if (distance_to_object(obj_Player) < 300)
	{
		isEngaged = true;
		// Chases player and shoots from the chosen attack distance
		var pdir = point_direction(x, y, AttackDistance, obj_Player.y);
		motion_add(pdir, EnemyShipSpeed);
	
		if (EnemyLaserCharged)
		{
			// Shoots laser projectile and reset charge timer
			var EnemyLaser = instance_create_layer(x,y,layer,obj_EnemyLaser);
			EnemyLaser.direction = image_angle;
			EnemyLaser.image_angle = image_angle;
			EnemyLaser.speed = 11*(1 + 0.05 * global.Level);;
			EnemyLaserCharged = false;
			alarm_set(0, EnemyLaserChargeTimer);
		
			audio_stop_sound(sfx_EnemyShoot);	
			audio_play_sound(sfx_EnemyShoot,1,false);

		}
	}
}
else
{
	isEngaged = false;
}


// Sets max speed
if (speed > EnemyShipSpeed)
{
	speed = EnemyShipSpeed;
}


// Sets pov to current direction
if (!isEngaged && direction > 90 && direction < 270)
{
	// If moving to the left, look left
	image_angle = 180;
}
else if (!isEngaged && direction < 90 && direction > 270)
{
	// If moving to the right, look right
	image_angle = 0;
}

// Sets shooting direction
else if (isEngaged && point_direction(x,y,obj_Player.x,y) > 90 && (point_direction(x,y,obj_Player.x,y) < 270))
{
	// If player is on its left, aim left
	image_angle = 180;
}
else
{
	// If player is on its right, aim right
	image_angle = 0;
}

// Prevent going outside the left and right borders
if (x < 150) 
{
	// When near left border move to the right
	image_angle = 0;
}
else if (x > room_width - 150)
{
	image_angle = 180;
}