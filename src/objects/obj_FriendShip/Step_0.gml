/// @description Follow Player
// You can write your code in this editor

// Follows the player behind by forming a squad based on FriendShipNumber
if (instance_exists(obj_Player))
{
	if (room == rm_Game || room == rm_Swarm)
	{
		switch (FriendShipNumber)
		{
		case 1:
			// Positioning of the FriendShip
			if (obj_Player.image_angle == 0)
			{
				// Mimics Player pov
				image_angle = 0;
				// Follows player behind (top of the squad formation)
				move_towards_point(obj_Player.x - 25,obj_Player.y - 50,obj_Player.speed)
			}
			else
			{
				// Mimics Player pov
				image_angle = 180;
				// Follows player behind (top of the squad formation)
				move_towards_point(obj_Player.x + 25,obj_Player.y - 50,obj_Player.speed)
			}
		
			// Mimics Player shooting
			if ((keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left)) && obj_Player.isLaserCharged)
			{
				laser = instance_create_layer(x,y,layer,obj_PlayerLaser);
				laser.direction = image_angle;
				laser.image_angle = image_angle;
				// Increases laser speed based on number of powerups
				laser.speed = obj_Player.LaserSpeed;
			}
			break;
		case 2:
			// Positioning of the FriendShip
			if (obj_Player.image_angle == 0)
			{
				// Mimics Player pov
				image_angle = 0;
				// Follows player behind (bottom of the squad formation)
				move_towards_point(obj_Player.x - 25,obj_Player.y + 50,obj_Player.speed)
	
			}
			else
			{
				// Mimics Player pov
				image_angle = 180;
				// Follows player behind (bottom of the squad formation)
				move_towards_point(obj_Player.x + 25,obj_Player.y + 50,obj_Player.speed)
			}
			// Mimics Player shooting
			if ((keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left)) && obj_Player.isLaserCharged)
			{
				laser = instance_create_layer(x,y,layer,obj_PlayerLaser);
				laser.direction = image_angle;
				laser.image_angle = image_angle;
				// Increases laser speed based on number of powerups
				laser.speed = obj_Player.LaserSpeed;
			}
			break;
		case 3:
			// Positioning of the FriendShip
			if (obj_Player.image_angle == 0)
			{
				// Mimics Player pov
				image_angle = 0;
				// Follows player behind (middle of the squad formation)
				move_towards_point(obj_Player.x - 35,obj_Player.y,obj_Player.speed)
	
			}
			else
			{
				// Mimics Player pov
				image_angle = 180;
				// Follows player behind (middle of the squad formation)
				move_towards_point(obj_Player.x + 35,obj_Player.y,obj_Player.speed)
			}
			// Effect: Halves the recharge time of shields and bombs
			obj_Shield.ShieldRespawnTimer = 250;
			obj_PlayerManager.isBombRefreshUpgrade = true;
			break;
		}
		// Move to player location when far from player
		if (distance_to_object(obj_Player) > 250)
		{
			x = obj_Player.x - 100;
			y = obj_Player.y;
		}

	
	
	
		// Changes sprite back when entering game or swarm room
		sprite_index = spr_FriendShip;
	}
}
else if (room == rm_Intermission || room == rm_GameOver)
{
	x = 125; 
	y = 475;
	sprite_index = noone;
}

// When player dies, if FriendShip reserve count is less than the friend ship's number. Destroy it
if FriendShipNumber > obj_RescueEvent.FriendShipCount
{
	instance_destroy();
	// Returns the shield and bomb respawn timer back to its original value
	obj_Shield.ShieldRespawnTimer = 500;
	obj_PlayerManager.isBombRefreshUpgrade = false;
	
}

if (room == rm_GameOver)
{
	instance_deactivate_object(self);
}
