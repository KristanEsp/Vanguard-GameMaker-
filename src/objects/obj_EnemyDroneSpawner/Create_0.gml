/// @description Insert description here
// You can write your code in this editor

// Sets the timer for the first enemy spawned in the level
alarm_set(0, 700);
isDepleted = false;
DroneCount = 0;

// Sets the respawn timer for Enemy ships based on current level.
// Faster spawn rate for higher levels
if (global.Level < 20)
{
	DroneSpawnTimer = 250*(1 - 0.05*global.Level);
}
else
{
	// Caps the spawn rate at level 20
	DroneSpawnTimer = 10;
}

// Caps the number of Drones spawned at once to prevent large swarms at later levels

if (global.Level <= 5)
{
	DroneCap = 6;
}
else if (global.Level <= 10)
{
	DroneCap = 8;
}
else if (global.Level <= 15)
{
	DroneCap = 10;
}
else
{
	// Max Cap
	DroneCap = 12;
}