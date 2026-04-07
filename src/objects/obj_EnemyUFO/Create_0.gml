/// @description Sets EnemyUFO movement
// You can write your code in this editor

// Inherit MinimapManager icons
event_inherited();
IconSprite = spr_IconUFO;



// States of path direction
enum DirectionState
{
	LEFT,
	RIGHT,
};

// Speed Increases by 5% per level
UFOspeed = 3.5*(1 + 0.05 * global.Level);;
RunningTime = 0;
// Path time becomes shorter as level increases to match the scaled increase in speed
if (global.Level < 20)
{
	PathTime = random_range(0.85*(1 - 0.025 * global.Level),1.75*(1 - 0.025 * global.Level));
}
// Caps PathTime at level 20
else
{
	PathTime = random_range(0.5,1);
}

// Randomly choose movement direction between left and right
State = choose(DirectionState.LEFT,DirectionState.RIGHT)
isUp = true;

// Move towards a random room y-cooridnate as its starting point
yPoint = random_range(200,room_height - 150);
move_towards_point(x, yPoint, UFOspeed);


// Sets and starts timer for abduction event
alarm_set(0,100)
AbductionCooldown = 200;

// Scales the max number of UFO becoming active at once based on current level
MaxAbductionCount = round(2 + (global.Level/2));
// Projectile attack variables
EnemyProjectileCharged = true;
EnemyProjectileChargeTimer = 100;

