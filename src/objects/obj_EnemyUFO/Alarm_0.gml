/// @description Abduction Cooldown Period
// You can write your code in this editor

alarm_set(0,AbductionCooldown);
AbductionCount = instance_number(obj_EnemyUFOActive);

// Percentage chance of becoming an active UFO based on current level
if (global.Level <= 5)
{
	// 50% Chance of becoming active UFO before level 6
	if (AbductionCount < MaxAbductionCount && instance_exists(obj_FriendHuman))
	{
		ChooseActive = irandom(1)
	}
	else
	{
		// If there are currently max number of ongoing invasion, choose to not become active
		ChooseActive = 0;
	}


	if (ChooseActive == 1)
	{
		// Chosen instance changes to active UFO object
		instance_change(obj_EnemyUFOActive,true);
	}
}
else if (global.Level <= 10)
{
	// 20% Chance of becoming active UFO from further rounds
	if (AbductionCount < MaxAbductionCount && instance_exists(obj_FriendHuman))
	{
		ChooseActive = irandom(4)
	}
	else
	{
		ChooseActive = 0;
	}


	if (ChooseActive == 4)
	{
		// Chosen instance changes to active UFO object
		instance_change(obj_EnemyUFOActive,true);
	}
}
else
	// 10% Chance of becoming active UFO from further rounds
	if (AbductionCount < MaxAbductionCount && instance_exists(obj_FriendHuman))
	{
		ChooseActive = irandom(9)
	}
	else
	{
		ChooseActive = 0;
	}


	if (ChooseActive == 1)
	{
		// Chosen instance changes to active UFO object
		instance_change(obj_EnemyUFOActive,true);
	}
