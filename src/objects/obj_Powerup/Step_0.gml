/// @description Insert description here
// You can write your code in this editor

// Flashes the powerup to indicate close to expiration
if (alarm_get(0) < 300)
{
	image_alpha = clamp(image_alpha + choose (-1, 1), 0, 1);
}

// Sets random location for the generated particles
var xparticle = random_range(0,25);
var yparticle= random_range(0,25);
// Particle
part_particles_create(global.PartSys,x + choose(xparticle,-xparticle),y + choose(yparticle,-yparticle),global.PartType_Powerup,20);