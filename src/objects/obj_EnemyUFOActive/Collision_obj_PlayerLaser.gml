/// @description Insert description here
// You can write your code in this editor

instance_destroy();
instance_destroy(other);

obj_GameManager.EnemyScore += 100;

part_particles_create(global.PartSys,x,y,global.PartType_Sparks,40);
part_particles_create(global.PartSys,x,y,global.PartType_FireworksPurple,100);
part_particles_create(global.PartSys,x,y,global.PartType_SmokeCollision,1);
part_particles_create(global.PartSys,x,y,global.PartType_Explosion,1);
audio_play_sound(sfx_UFODeath,1,false);