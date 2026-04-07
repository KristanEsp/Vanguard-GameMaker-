/// @description Insert description here
// You can write your code in this editor

// Rapidly expands the bomb and destroy all enemies
image_xscale++;
image_yscale++;

// Expansion limit
if (image_xscale == 15 && image_yscale == 15)
{
	instance_destroy();
}
