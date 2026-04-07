/// @description Insert description here
// You can write your code in this editor

// Creates warp after destroying all enemies at the middle of the game
if (obj_EnemyUFOSpawner.isDepleted && obj_EnemyShipSpawner.isDepleted && obj_EnemyDroneSpawner.isDepleted &&
	obj_EnemyUFOSpawner.UFOCount == 0 && instance_number(obj_EnemyShip) == 0 && instance_number(obj_EnemyDrone) == 0)
{
	if (instance_number(obj_Warp) == 0)
	{
		// Spawns a single warp
		instance_create_layer(room_width / 2, room_height / 2, layer, obj_Warp);
	}
	
}