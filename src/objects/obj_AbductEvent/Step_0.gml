/// @description Insert description here
// You can write your code in this editor


// If abducted human count reaches 5, UFOs get a power-up
if (instance_number(obj_AbductedHuman) == 3)
{
	isUFOPowerup1 = true;
}
else if (instance_number(obj_AbductedHuman) == 6)
{
	isUFOPowerup2 = true;
}


// Activate swarm event for every modulus human abducted
if (instance_number(obj_AbductedHuman) % 5 == 0 && instance_number(obj_AbductedHuman) != 0)
{
	isSwarmLevel = true;
}
else
{
	// boolean to prevent swarm from occuring multiple times if abduction count remains the same
	isSwarmSuccess = false;
}

if (isSwarmSuccess)
{
	// Prevents swarm event from occuring early after just successfully finishing one
	isSwarmLevel = false;
}

