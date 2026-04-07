/// @description Insert description here
// You can write your code in this editor

switch (WaveNumber)
{
	case WaveState.WAVE1:
		UFOMaxCount = 10;
		if (UFOCount < UFOMaxCount)
		{
			// Creates UFOs until max count is reached at the left side of the swarm room
			instance_create_layer(0,random_range(y,room_height),layer,obj_SwarmUFOActive);
			UFOCount++;

		}
		
		if (instance_number(obj_SwarmUFOActive) == 0)
		{
			// After killing all enemies, resets UFO count to 0 and initiate next wave
			UFOCount = 0;
			WaveNumber++;
		}
		break;
	case WaveState.WAVE2:
		UFOMaxCount = 20;
		if (UFOCount < UFOMaxCount)
		{
			instance_create_layer(room_width,random_range(y,room_height),layer,obj_SwarmUFOActive);
			UFOCount++;
		}
		DroneMaxCount = 10;
		if (DroneCount < DroneMaxCount)
		{
			instance_create_layer(room_width, random_range(y,room_height),layer,obj_SwarmDrone);
			DroneCount++;
		}
		
		if (instance_number(obj_SwarmUFOActive) == 0 && instance_number(obj_SwarmDrone) == 0)
		{
			// After killing all enemies, resets all count to 0 and initiate next wave
			UFOCount = 0;
			DroneCount = 0;
			WaveNumber++;
		}
		break;
	case WaveState.WAVE3:
		UFOMaxCount = 5;
		if (UFOCount < UFOMaxCount)
		{
			// Creates 5 UFOs at each sides of the room
			instance_create_layer(0,random_range(y,room_height),layer,obj_SwarmUFOActive);
			instance_create_layer(room_width,random_range(y,room_height),layer,obj_SwarmUFOActive);
			UFOCount++;
		}
		DroneMaxCount = 3;
		if (DroneCount < DroneMaxCount)
		{
			instance_create_layer(0,random_range(y,room_height),layer,obj_SwarmDrone);
			instance_create_layer(room_width, random_range(y,room_height),layer,obj_SwarmDrone);
			DroneCount++;
		}
		
		ShipMaxCount = 5;
		if (ShipCount < ShipMaxCount)
		{
			instance_create_layer(0,random_range(y,room_height),layer,obj_SwarmShip);
			instance_create_layer(room_width, random_range(y,room_height),layer,obj_SwarmShip);
			ShipCount++;
		}
		
		
		
		if (instance_number(obj_SwarmUFOActive) == 0 && instance_number(obj_SwarmDrone) == 0 && instance_number(obj_SwarmShip) == 0 )
		{
			// After killing all enemies, resets all count to 0 and spawns the warp
			UFOCount = 0;
			DroneCount = 0;
			ShipCount = 0
			WaveNumber++;
		}
		break;
		default:
		{
			// Spawns the warp
			if (instance_number(obj_Warp) == 0)
			{
				instance_create_layer(room_width / 2, room_height / 2, layer, obj_Warp);
			}
		}
}


	




