/// @description Spawn all asteroids
// You can write your code in this editor

// Spawns all number of asteroid at a random location
if (AsteroidCount < obj_GameManager.AsteroidMaxCount)
{
	instance_create_layer(random_range(700, room_width - 300), random_range(150, room_height - 200), layer, obj_BigAsteroid);
	AsteroidCount ++;
}
