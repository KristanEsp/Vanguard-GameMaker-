/// @description Player Stats
// You can write your code in this editor

event_inherited();

IconSprite = spr_IconPlayer;

acceleration = 0.75*(1 + 0.05 * global.Level);
maxSpeed = 10*(1 + 0.05 * global.Level);

// Invulnerability timer
Invulnerability = true;
alarm_set(0, InvulnerabilityTimer) // SEt at 150 default

// Initial Laser Settings
LaserChargeTimer = 50;
LaserSpeed = 25;
isLaserCharged = true;
isBombCharged = true;
laser = noone;

// Bomb Timer
BombChargeTimer = 150;

isCarryingHuman = false;