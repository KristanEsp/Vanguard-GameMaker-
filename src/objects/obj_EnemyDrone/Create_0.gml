/// @description Insert description here
// You can write your code in this editor

// Inherit MinimapManager icons
event_inherited();
IconSprite = spr_IconDrone;

enum MovementState
{
	PATROL,
	IDLE,
	CHASE
};

RunningTime = 0;
DroneState = 5;

DroneIdleTimer = 100;
DronePatrolTimer = 100;
SelfDestructTimer = 0;

xPatrolRandom = random(room_width);
yPatrolRandom = random(room_height);

// Base speed of 2.5. Increaases by 5% per current level
DroneSpeed = 3*(1 + 0.05 * global.Level);


// Move towards a random room y-cooridnate as its starting point
yPoint = random_range(200,room_height-150);
move_towards_point(x, yPoint, DroneSpeed);
