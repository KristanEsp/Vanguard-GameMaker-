/// @description TimerCount
// You can write your code in this editor

// Randomly chooses first respawn timer
PowerupTimer = irandom_range(1000,1500);

// Starts the first spawn timer
alarm_set(0,PowerupTimer)