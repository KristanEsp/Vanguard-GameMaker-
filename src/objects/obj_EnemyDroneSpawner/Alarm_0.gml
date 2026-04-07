/// @description Insert description here
// You can write your code in this editor

if (DroneCount < obj_GameManager.DroneMaxCount)
{
	instance_create_layer(random_range(0,room_width),y,layer,obj_EnemyDrone);
	DroneCount++;
}
else
{
	isDepleted = true;
}

alarm_set(0,DroneSpawnTimer);
