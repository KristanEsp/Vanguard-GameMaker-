/// @description Spawned movement
// You can write your code in this editor

AsteroidSpeed = random_range(0.25,0.5);
AsteroidRotation = random_range(0.25,0.5);

// Choose starting direction
var pdir = random (360);
motion_add(pdir,AsteroidSpeed);

// Randomly reverses rotation rate
if (irandom(1))
{
	AsteroidRotation *= -1;
}