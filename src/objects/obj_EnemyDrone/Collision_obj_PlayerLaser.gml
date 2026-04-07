/// @description Insert description here
// You can write your code in this editor

instance_destroy(other);
instance_destroy();

obj_GameManager.EnemyScore += 300;

part_particles_create(global.PartSys,x,y,global.PartType_Sparks,40);
