/// @description Insert description here
// You can write your code in this editor
if (global.Level < 10)
{
	UFOSpawnTimer = random_range(125*(1 - 0.05*global.Level), 175*(1 - 0.05*global.Level));
}
else
{
	// Caps the spawn rate at level 20
	UFOSpawnTimer = 5;
}

if (UFOTotalCount < obj_GameManager.UFOMaxCount && UFOCount < UFOCap)
{
	instance_create_layer(random_range(500,room_width - 500),y,layer,obj_EnemyUFO);
	UFOTotalCount++;

}
else if (UFOTotalCount >= obj_GameManager.UFOMaxCount)
{
	// Stops spawning when count reaches the level's max number of spawns
	isDepleted = true;
}

alarm_set(0, UFOSpawnTimer)