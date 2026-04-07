/// @description Spawns clusters of small asteroids
// You can write your code in this editor

// Spawns 3 smaller asteroids on death
instance_create_layer(x, y + 50, layer, obj_SmallAsteroid);
instance_create_layer(x -25, y - 25, layer, obj_SmallAsteroid);
instance_create_layer(x + 25, y - 25, layer, obj_SmallAsteroid);

