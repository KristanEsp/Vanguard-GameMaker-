/// @description Respawn timer
// You can write your code in this editor

// Sets the timer for the first enemy spawned in the level
alarm_set(0, 500);
isDepleted = false;

ShipCount = 0;
if (global.Level < 20)
{
	ShipSpawnTimer = 400*(1 - 0.05*global.Level);
}
else
{
	// Caps the spawn rate at level 20
	ShipSpawnTimer = 30;
}


if (global.Level <= 5)
{
	ShipCap = 4;
}
else if (global.Level <= 10)
{
	ShipCap = 6;
}
else if (global.Level <= 15)
{
	ShipCap = 8;
}
else
{
	// Max Cap
	ShipCap = 10;
}