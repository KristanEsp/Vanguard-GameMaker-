/// @description Insert description here
// You can write your code in this editor

// Particle System
global.PartSys = part_system_create_layer(layer, true)
// Depth of particle sys
part_system_depth(global.PartSys, 1);
// Particle Emitter Creator for bottom sky
global.PartSysEmitter0 = part_emitter_create(global.PartSys);
// Part emitter region sets
part_emitter_region(
global.PartSys,
global.PartSysEmitter0,
0,
room_width,
450,
700,
ps_shape_ellipse,
ps_distr_linear);
// Particle Emitter Creator for upper sky
global.PartSysEmitter1 = part_emitter_create(global.PartSys);
// Part emitter region sets
part_emitter_region(
global.PartSys,
global.PartSysEmitter1,
0,
room_width,
0,
449,
ps_shape_ellipse,
ps_distr_linear);

// Particle Types

// Player Particles
// Particle for player ship base exhaust
global.PartType_BaseExhaust = part_type_create();
part_type_shape(global.PartType_BaseExhaust, pt_shape_sphere);
part_type_size(global.PartType_BaseExhaust,0.2,0.5,0.1,0.01);
// 3 colors
part_type_color3(global.PartType_BaseExhaust,c_teal,c_aqua,c_teal);
part_type_alpha1(global.PartType_BaseExhaust,1);
part_type_speed(global.PartType_BaseExhaust,10,10,1,0.2);
part_type_life(global.PartType_BaseExhaust, 1,3);

// Particle for player ship trail exhaust
global.PartType_TrailExhaust = part_type_create();
part_type_shape(global.PartType_TrailExhaust, pt_shape_line);
part_type_size(global.PartType_TrailExhaust,0.5,0.75,-0.1,-0.2);
part_type_color1(global.PartType_TrailExhaust,c_teal);
part_type_alpha1(global.PartType_TrailExhaust,0.5);
part_type_speed(global.PartType_TrailExhaust,2,3,-0.5,-0.1);
part_type_life(global.PartType_TrailExhaust, 1,7);

// Particle for player ship smoke exhaust
global.PartType_SmokeExhaust = part_type_create();
part_type_shape(global.PartType_SmokeExhaust, pt_shape_smoke);
part_type_size(global.PartType_SmokeExhaust,0.5,0.75,-0.1,-0.2);
part_type_color1(global.PartType_SmokeExhaust,c_teal);
part_type_alpha3(global.PartType_SmokeExhaust,0, 0, 0.5);
part_type_speed(global.PartType_SmokeExhaust,2,3,-0.5,-0.1);
part_type_life(global.PartType_SmokeExhaust, 5,10);


// Collision Particles
// Particle for spark collision
global.PartType_Sparks = part_type_create();
part_type_shape(global.PartType_Sparks, pt_shape_line);
part_type_size(global.PartType_Sparks,0.2,0.5,-0.01,-0.01);
part_type_color3(global.PartType_Sparks,c_white, c_yellow, c_orange);
part_type_alpha1(global.PartType_Sparks,0.5);
part_type_speed(global.PartType_Sparks,1,4,0.1,0);
part_type_direction(global.PartType_Sparks,0, 360, 0, 0);
// Orientation to start at object origin
part_type_orientation(global.PartType_Sparks,0, 0, 0, 0, true);
part_type_life(global.PartType_Sparks, 10,20);


// Particle for explosion collision
global.PartType_Explosion = part_type_create();
part_type_shape(global.PartType_Explosion, pt_shape_explosion);
part_type_size(global.PartType_Explosion,2,2,0.01,0.01);
part_type_color3(global.PartType_Explosion, c_yellow, c_orange, c_red);
part_type_alpha1(global.PartType_Explosion,0.5);
part_type_speed(global.PartType_Explosion,0.1,0.2,0,0.01);
part_type_direction(global.PartType_Explosion,0, 360, 0, 0);
part_type_orientation(global.PartType_Explosion,0, 0, 0, 0, true);
part_type_life(global.PartType_Explosion, 10,25);

// Particle for smoke collision
global.PartType_SmokeCollision = part_type_create();
part_type_shape(global.PartType_SmokeCollision, pt_shape_smoke);
part_type_size(global.PartType_SmokeCollision,1,2,0,0.01);
part_type_color2(global.PartType_SmokeCollision, c_grey, c_black);
part_type_alpha1(global.PartType_SmokeCollision,0.75);
part_type_speed(global.PartType_SmokeCollision,0.1,0.2,0,0.01);
part_type_direction(global.PartType_SmokeCollision,0, 360, 0, 0);
part_type_orientation(global.PartType_SmokeCollision,0, 0, 0, 0, true);
part_type_life(global.PartType_SmokeCollision, 30,60);

// Particle for Shield collision
global.PartType_ShieldCollision = part_type_create();
part_type_shape(global.PartType_ShieldCollision, pt_shape_spark);
part_type_size(global.PartType_ShieldCollision,1,1,0.5,0.1);
part_type_color2(global.PartType_ShieldCollision, c_aqua, c_teal);
part_type_alpha1(global.PartType_ShieldCollision,0.5);
part_type_speed(global.PartType_ShieldCollision,0.1,0.2,0,0.01);
part_type_direction(global.PartType_ShieldCollision,0, 360, 0, 0);
part_type_orientation(global.PartType_ShieldCollision,0, 0, 0, 0, true);
part_type_life(global.PartType_ShieldCollision, 2,5);

// Particle for Fireworks explosion
global.PartType_FireworksPurple = part_type_create();
part_type_shape(global.PartType_FireworksPurple, pt_shape_pixel);
part_type_size(global.PartType_FireworksPurple,2,3,0.05,0.02);
part_type_color3(global.PartType_FireworksPurple,c_yellow, c_aqua, c_fuchsia);
part_type_alpha1(global.PartType_FireworksPurple,0.5);
part_type_speed(global.PartType_FireworksPurple,0.1,3,0.2,0);
part_type_direction(global.PartType_FireworksPurple,0, 360, 0, 0);
part_type_orientation(global.PartType_FireworksPurple,0, 0, 0, 0, true);
part_type_life(global.PartType_FireworksPurple, 20,30);

global.PartType_FireworksRed = part_type_create();
part_type_shape(global.PartType_FireworksRed, pt_shape_pixel);
part_type_size(global.PartType_FireworksRed,2,3,0.05,0.02);
part_type_color3(global.PartType_FireworksRed,c_yellow, c_olive, c_maroon);
part_type_alpha1(global.PartType_FireworksRed,0.5);
part_type_speed(global.PartType_FireworksRed,0.1,3,0.2,0);
part_type_direction(global.PartType_FireworksRed,0, 360, 0, 0);
part_type_orientation(global.PartType_FireworksRed,0, 0, 0, 0, true);
part_type_life(global.PartType_FireworksRed, 20,30);

global.PartType_FireworksBlue = part_type_create();
part_type_shape(global.PartType_FireworksBlue, pt_shape_pixel);
part_type_size(global.PartType_FireworksBlue,3,4,0.1,0.05);
part_type_color3(global.PartType_FireworksBlue,c_lime, c_aqua, c_navy);
part_type_alpha1(global.PartType_FireworksBlue,0.5);
part_type_speed(global.PartType_FireworksBlue,0.25,5,0.1,0);
//part_type_speed(global.PartType_FireworksBlue,0.5,4,0.4,0);
part_type_direction(global.PartType_FireworksBlue,0, 360, 0, 0);
part_type_orientation(global.PartType_FireworksBlue,0, 0, 0, 0, true);
part_type_life(global.PartType_FireworksBlue, 50,100);




global.PartType_FireworksLightBlue = part_type_create();
part_type_shape(global.PartType_FireworksLightBlue, pt_shape_line);
part_type_size(global.PartType_FireworksLightBlue,0.2,0.3,0.01,-0.01);
part_type_color3(global.PartType_FireworksLightBlue,c_blue, c_aqua, c_teal);
part_type_alpha1(global.PartType_FireworksLightBlue,0.5);
part_type_speed(global.PartType_FireworksLightBlue,0.1,3,0.2,0);
part_type_direction(global.PartType_FireworksLightBlue,0, 360, 0, 0);
part_type_orientation(global.PartType_FireworksLightBlue,0, 0, 0, 0, true);
part_type_life(global.PartType_FireworksLightBlue, 20,30);

// Other Particles
// Particles for bomb
global.PartType_Bomb = part_type_create();
part_type_shape(global.PartType_Bomb, pt_shape_disk);
part_type_size(global.PartType_Bomb,0.5,1,1.5,1);
part_type_color1(global.PartType_Bomb,c_teal);
part_type_alpha1(global.PartType_Bomb,0.2);
part_type_speed(global.PartType_Bomb,0,0,0,0);
part_type_life(global.PartType_Bomb, 30,40);

// Particle for Powerup
global.PartType_Powerup = part_type_create();
part_type_shape(global.PartType_Powerup, pt_shape_spark);
part_type_size(global.PartType_Powerup,0,0.5,0.05,0.025);
part_type_color2(global.PartType_Powerup, c_aqua, c_teal);
part_type_alpha1(global.PartType_Powerup,1);
part_type_speed(global.PartType_Powerup,0.1,0.2,0.01,0.005);
part_type_direction(global.PartType_Powerup,0, 360, 0, 0);
part_type_orientation(global.PartType_Powerup,0, 0, 0, 0, true);
part_type_life(global.PartType_Powerup, 1,3);

// Particles for UFO abduction
global.PartType_Abduction = part_type_create();
part_type_sprite(global.PartType_Abduction, spr_Abduction, 0, 0, 0);
part_type_size(global.PartType_Abduction, 1.5,2,0,0);
part_type_alpha1(global.PartType_Abduction, 0.5);
part_type_life(global.PartType_Abduction, 2,5);

// Star Particles
// Particle Emitter 0 (Bottom Sky)
global.PartType_Stars0 = part_type_create();
part_type_shape(global.PartType_Stars0, pt_shape_pixel);
part_type_size(global.PartType_Stars0,0.8,2,0,0.0);
// colour
part_type_color1(global.PartType_Stars0,c_white);
part_type_alpha1(global.PartType_Stars0,0.6);
// Particle life
part_type_life(global.PartType_Stars0, 100,200);
part_emitter_stream(global.PartSys, global.PartSysEmitter0, global.PartType_Stars0, 1);

// Particle Emitter 1 (Upper Sky)
global.PartType_Stars1 = part_type_create();
part_type_shape(global.PartType_Stars1, pt_shape_pixel);
part_type_size(global.PartType_Stars1,0.8,2,0,0.0);
// colour
part_type_color3(global.PartType_Stars1,c_red,c_green,c_blue);
part_type_alpha1(global.PartType_Stars1,0.6);
// Particle life
part_type_life(global.PartType_Stars1, 150,300);
part_emitter_stream(global.PartSys, global.PartSysEmitter1, global.PartType_Stars1, 1);



