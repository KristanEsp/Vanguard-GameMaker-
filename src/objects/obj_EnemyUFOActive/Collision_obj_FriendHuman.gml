/// @description Abduction event
// You can write your code in this editor

collision = true;
// Performs abduction event when collision occurs
if (isAbduction)
{
	// After collision, abduct humans to enemy drop off point
	if (distance_to_point(x,475)!= 0)
	{
		// Moves up to the y-level of the drop off first (pathing)
		move_towards_point(x, 475, UFOactiveSpeed);
	}
	else
	{
		// Moves to the drop off point
		move_towards_point(room_width - 125, 475, UFOactiveSpeed);
	}
	// Particles for UFO abduction
	part_particles_create(global.PartSys,x - 25,y + 25,global.PartType_Abduction,2);
	part_type_direction(global.PartType_FireworksLightBlue,0, 0, 0, 0);
	part_type_orientation(global.PartType_FireworksLightBlue,0, 0, 0, 0, true);
	if (!audio_is_playing(sfx_UFOAbduction))
	{
		audio_play_sound(sfx_UFOAbduction,1,false);
	}
}

