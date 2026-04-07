/// @description Player controls
// You can write your code in this editor

// W,A,S,D keys
W = keyboard_check(ord("W"));
A = keyboard_check(ord("A"));
S = keyboard_check(ord("S"));
D = keyboard_check(ord("D"));
Z = keyboard_check_pressed(ord("Z"));

// Moves Player left or right
if (keyboard_check(vk_right) || D)
{
	image_angle = 0;
	motion_add(image_angle, acceleration);
}
if (keyboard_check(vk_left) || A)

{
	image_angle = 180;
	motion_add(image_angle, acceleration);
}
// Deccelerates player if left&right keys are not pressed
if (speed != 0)
{
	// Sets decceleration value
	decceleration = -0.5*(1 + 0.05 * global.Level);
}
else
{
	// Prevents movement drift when speed reaches 0
	decceleration = 0;
}
if (!keyboard_check_released(vk_right || vk_left || D || A))
{
	motion_add(direction,decceleration)
}

// Moves Player up or down
if (keyboard_check(vk_up) || W)
{
	motion_add(90, acceleration);
}
if (keyboard_check(vk_down) || S)
{
	motion_add(270, acceleration);
}
// Sets max speed
if (speed > maxSpeed)
{
	speed = maxSpeed;
}

// Border Collisions
// Top border collision
if (y < 150) 
{
	y = 150;
}
// Bottom border collision
if (y > room_height - 40) 
{
	y = room_height - 40;
	speed = 0;
}
// Right border collision
if (x > room_width - 25)
{
	x = room_width - 25;
}
// Left border collision
if (x < 25)
{
	x = 25;
	speed = 0;
}	

// Shoot controls
if ((keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left)) && isLaserCharged)
{
	laser = instance_create_layer(x,y,layer,obj_PlayerLaser);
	laser.direction = image_angle;
	laser.image_angle = image_angle;
	// Increases laser speed based on number of powerups (see below)
	laser.speed = LaserSpeed;
	isLaserCharged = false;
	// Recharge laser based on current timer
	alarm_set(1,LaserChargeTimer);
	audio_play_sound(sfx_laser,1,false);
 }

 // Sets the shooting rate & laser speed based on number of powerups
if (global.Powerup <= 10)
{
	// Each powerup reduces the fire rate cooldown by 5 frames
	LaserChargeTimer = 51-(5*global.Powerup);
	// Each powerup increases laser speed by 2.5
	LaserSpeed = (25 + (2.5 * global.Powerup))*(1 + 0.05 * global.Level);
}
else
{
	// Maximum fire rate and laser speed caps at 10 powerups
	LaserChargeTimer = 1;
	LaserSpeed = 50;
}	

// Bomb
if ((Z || mouse_check_button_pressed(mb_right)) && isBombCharged && global.BombCount > 0)
{
	instance_create_layer(x,y,layer,obj_Bomb);
	global.BombCount--;
	isBombCharged = false;
	// Brief recharge time for the bomb
	alarm_set(2,BombChargeTimer);
	
	audio_play_sound(sfx_Bomb,1,false);
	part_particles_create(global.PartSys,x,y,global.PartType_Bomb,1);
}

// Invulnerability indication
if (Invulnerability)
{
	// Flickers the player to indicate invulnerability
	image_alpha = clamp(image_alpha + choose (-1, 1), 0, 1);
}
else
{
	image_alpha = 1;
}

// Frame animations
if (!instance_exists(laser))
{
	// If not shooting change following sprite frames
	if (speed == maxSpeed)
	{
		image_index = 1;
	}
	else
	{
		image_index = 0;
	}
}
else 
{
	// After shooting change following sprite frames
	if (speed == maxSpeed)
	{
		image_index = 3;
	}
	else
	{
		image_index = 2;
	}
}

// Movement Sound

if (speed > 0 && speed < 3)
{
	// Play acceleration sound
	if (!audio_is_playing(sfx_Acceleration) && !audio_is_playing(sfx_MaxSpeed))
	{
		audio_play_sound(sfx_Acceleration, 1, false);
	}
}
else if (speed >= 3 && speed <= maxSpeed)
{
	if (!audio_is_playing(sfx_MaxSpeed))
	{
		//audio_play_sound(sfx_MaxSpeed, 1, false);
	}
}

// Prevents a bug where player can't pick up humans after they drop humans on enemy base
if (distance_to_point(room_width - 250, y) < 50)
{
	isCarryingHuman = false
}



// Particles
if (speed != 0)
{
	// Creates 3 different types of particles
	part_type_direction(global.PartType_BaseExhaust,image_angle + 180, image_angle - 179,0,0);
	part_particles_create(global.PartSys,x,y,global.PartType_BaseExhaust,5);
	
	part_type_direction(global.PartType_TrailExhaust,image_angle + 180, image_angle - 179,0,0);
	part_type_direction(global.PartType_SmokeExhaust,image_angle + 180, image_angle - 179,0,0);
	
	// Location of particles depends on POV of player
	if (image_angle == 0)
	{
		part_particles_create(global.PartSys,x - 20,y,global.PartType_TrailExhaust,5);		
		part_particles_create(global.PartSys,x - 20,y,global.PartType_SmokeExhaust,3);		
	}
	else
	{
		part_particles_create(global.PartSys,x + 20,y,global.PartType_TrailExhaust,5);
		part_particles_create(global.PartSys,x + 20,y,global.PartType_SmokeExhaust,3);		
	}
}


