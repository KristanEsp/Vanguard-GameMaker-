/// @description Death Explosion
// You can write your code in this editor

// Creates an aoe explosion upon death (can penetrate player shield)
instance_create_layer(x,y,layer,obj_Explosion);

part_particles_create(global.PartSys,x,y,global.PartType_SmokeCollision,1);
part_particles_create(global.PartSys,x,y,global.PartType_Explosion,1);
part_particles_create(global.PartSys,x,y,global.PartType_FireworksRed,100);

audio_play_sound(sfx_DroneBomb,1,false);