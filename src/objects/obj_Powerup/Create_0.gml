/// @description Insert description here
// You can write your code in this editor

// Inherit minimap
event_inherited();
IconSprite = spr_IconPowerup;


image_alpha = 0.75

motion_add(random(360), 0.1);

PowerupDuration = 1000;


alarm_set(0,PowerupDuration)

