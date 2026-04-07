/// @description Insert description here
// You can write your code in this editor

// Destroy collided entity, make shield invisible, and starts shield respawn timer
instance_destroy(other);
sprite_index = noone;
Timer = 0;

audio_play_sound(sfx_ShieldDestroy,1,false);
part_particles_create(global.PartSys,x,y,global.PartType_ShieldCollision,10);