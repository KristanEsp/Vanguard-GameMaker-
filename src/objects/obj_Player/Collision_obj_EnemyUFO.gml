/// @description Collision event with EnemyUFO
// You can write your code in this editor

if (!Invulnerability)
{
	instance_destroy();
	instance_destroy(other);
	lives--;
}

