/// @description Insert description here
// You can write your code in this editor

// Event not inherited

// Particles
part_particles_create(global.PartSys,x,y,global.PartType_Sparks,50);
part_particles_create(global.PartSys,x,y,global.PartType_SmokeCollision,1);

instance_destroy();
instance_destroy(other);

obj_GameManager.EnemyScore += 20;


audio_play_sound(sfx_SmallAsteroidExplosion,1,false);