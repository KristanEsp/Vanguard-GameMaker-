/// @description After successful invasion
// You can write your code in this editor


// Activated UFO chases the target human to abduct
if (instance_exists(UFOtarget) && isAbduction && !collision)
{
	// Active instance moves towards Human for collision event
	move_towards_point(UFOtarget.x, UFOtarget.y - 10, UFOactiveSpeed);
}

if (instance_exists(UFOtarget) && isAbduction && !collision && UFOtarget.y < room_height - 20)
{
	UFOtarget = instance_find(obj_FriendHuman, irandom(instance_number(obj_FriendHuman)));
}





// If UFO couldn't find a target. Get a new one
if (distance_to_point(x, room_height + 5) == 0 || distance_to_point(x, 0) == 0)
{
	UFOtarget = instance_find(obj_FriendHuman, irandom(instance_number(obj_FriendHuman)));
}

// If human reaches enemy drop off point abduction is successful
if (distance_to_point(room_width - 250, y) < 25)
{
	isSuccessAbduction = true;
}

if (isSuccessAbduction == true)
{
	// Ends Abduction Event and rapidly chases player
	collision = false;
	isAbduction = false;
	var PlayerDir = point_direction(x, y, obj_Player.x, obj_Player.y);
	motion_add(PlayerDir, UFOactiveSpeed);
	//move_towards_point(obj_Player.x,obj_Player.y,UFOspeed);

	if (!audio_is_playing(sfx_UFOChase) && !audio_is_playing(sfx_AbductionSuccess))
	{
		audio_play_sound(sfx_UFOChase,1,false);
	}
}




if (speed > UFOActiveMaxSpeed)
{
	speed = UFOActiveMaxSpeed;
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
		alarm_set(0, EnemyProjectileChargeTimer);
	}
}
