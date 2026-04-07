/// @description After instance change
// You can write your code in this editor

// Inherit MinimapManager icons
event_inherited();
IconSprite = spr_IconUFOActive;


isAbduction = true;
if (!obj_AbductEvent.isUFOPowerup1)
{
	// If no power up available then speed is normal
	UFOactiveSpeed = 3.5*(1 + 0.05 * global.Level);
	UFOActiveMaxSpeed = 5*(1 + 0.05 * global.Level);
}
else
{
	// If powerup is available, increase activeUFO movement speed
	UFOactiveSpeed = 5*(1 + 0.05 * global.Level);
	UFOActiveMaxSpeed = 7*(1 + 0.05 * global.Level);
}
// Randomly chooses FriendHuman object to abduct
UFOtarget = instance_find(obj_FriendHuman, irandom(instance_number(obj_FriendHuman)));

// Projectile attack variables
EnemyProjectileCharged = true;
EnemyProjectileChargeTimer = 100;


