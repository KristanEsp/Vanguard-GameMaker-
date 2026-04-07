/// @description Insert description here
// You can write your code in this editor

// Cleans up particles on exit


part_emitter_destroy(global.PartSys, global.PartSysEmitter0);
part_emitter_destroy(global.PartSys, global.PartSysEmitter1);

part_type_destroy(global.PartType_Stars0);
part_type_destroy(global.PartType_Stars1);


part_type_destroy(global.PartType_BaseExhaust);
part_type_destroy(global.PartType_SmokeExhaust);
part_type_destroy(global.PartType_Sparks);
part_type_destroy(global.PartType_Explosion);
part_type_destroy(global.PartType_SmokeCollision);
part_type_destroy(global.PartType_ShieldCollision);
part_type_destroy(global.PartType_FireworksPurple);
part_type_destroy(global.PartType_FireworksRed);
part_type_destroy(global.PartType_FireworksBlue);
part_type_destroy(global.PartType_FireworksLightBlue);
part_type_destroy(global.PartType_Bomb);
part_type_destroy(global.PartType_Powerup);
part_type_destroy(global.PartType_Abduction);

part_system_destroy(global.PartSys);