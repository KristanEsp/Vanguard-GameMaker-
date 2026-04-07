/// @description Spawn enemy ship
// You can write your code in this editor

// Create enemy ship until max number of ship is present
if (ShipCount < obj_GameManager.ShipMaxCount && instance_number(obj_EnemyShip) < ShipCap)
{
	instance_create_layer(x,y,layer,obj_EnemyShip);
	ShipCount++;
}
else if (ShipCount >= obj_GameManager.ShipMaxCount)
{
	// Stops spawning when count reaches the level's max number of spawns
	isDepleted = true;
}


alarm_set(0,ShipSpawnTimer);