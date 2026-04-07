/// @description Variables
// You can write your code in this editor

// Inherit MinimapManager icons
event_inherited();
IconSprite = spr_IconShip;


// Scaled based on current level (increases by 5%)
EnemyShipSpeed = 5*(1 + 0.05 * global.Level);
isPatrol = false;
isEngaged = false;

// Laser attack variables
EnemyLaserCharged = true;
EnemyLaserChargeTimer = 60;

// Sets how far the enemy ship will engage the player.
AttackDistance = 0;
if (instance_exists(obj_Player))
{
	choose(obj_Player.x + random_range(250,500), obj_Player.x - random_range(250,500));
}


// Randomly sets initial patrol coordinates
x_start = random(room_width);
y_start = random_range(200, 400);