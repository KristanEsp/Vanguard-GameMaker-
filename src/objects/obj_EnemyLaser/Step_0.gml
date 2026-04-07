/// @description Insert description here
// You can write your code in this editor

//If projectile has travelled a certain distance increase its speed 
// to prevent "hanging" when player is moving at the same direction
distanceTravelled += speed
if (distanceTravelled > 1000)
{
	motion_add(direction, 0.5);
}

