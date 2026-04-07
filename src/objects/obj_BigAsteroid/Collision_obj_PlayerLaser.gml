/// @description Insert description here
// You can write your code in this editor

// Particles
part_particles_create(global.PartSys,x,y,global.PartType_Sparks,50);
part_particles_create(global.PartSys,x,y,global.PartType_SmokeCollision,1);

instance_destroy();
instance_destroy(other);

obj_GameManager.EnemyScore += 50;

audio_play_sound(sfx_LaserHit,2,false);
audio_play_sound(sfx_BigAsteroidExplosion,1,false);