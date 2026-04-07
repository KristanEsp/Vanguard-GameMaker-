/// @description Insert description here
// You can write your code in this editor

instance_destroy(other);

part_particles_create(global.PartSys,other.x,other.y,global.PartType_FireworksPurple,100);
audio_play_sound(sfx_UFODeath,1,false);