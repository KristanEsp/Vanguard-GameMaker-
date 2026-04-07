/// @description Insert description here
// You can write your code in this editor

// Big asteroid will not be destroyed, Shield becomes invisible, and starts shield respawn timer
sprite_index = noone;
Timer = 0;

// It is intentional that the big asteroid will still damage player despite shield presence
audio_play_sound(sfx_ShieldDestroy,1,false);
part_particles_create(global.PartSys,x,y,global.PartType_ShieldCollision,10);