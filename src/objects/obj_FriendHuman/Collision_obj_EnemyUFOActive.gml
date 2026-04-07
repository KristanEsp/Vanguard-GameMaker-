/// @description Abducted event triggers
// You can write your code in this editor

isAbducted = true;

// human sticks with abdctor UFO after collision
if (isAbducted && !other.isSuccessAbduction)
{
	move_snap(other.x, other.y + 15);
}

abductor = instance_id_get(other);

// If abductor UFO is destroyed, object falls to the ground
if (!instance_exists(abductor) && distance_to_point(x, room_height - 25) > 25)
{
	move_towards_point(x,room_height-25,1.5);
	isAbducted = false;
}
