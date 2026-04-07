/// @description Insert description here
// You can write your code in this editor

// Sets the timer for the first enemy spawned in the level
alarm_set(0,200)
isDepleted = false;

UFOCount = 0;
UFOTotalCount = 0;
// Sets the respawn timer for Enemy ships based on current level.
// Faster spawn rate for higher levels

// Caps the number of UFOs spawned at once to prevent large swarms at later levels
if (global.Level <= 5)
{
	UFOCap = 7;
}
else if (global.Level <= 10)
{
	UFOCap = 10;
}
else if (global.Level <= 15)
{
	UFOCap = 12;
}
else
{
	// Max Cap
	UFOCap = 15;
}



