/// @description Number of enemies and scoring
// You can write your code in this editor

// Counts the number of enemies that will be spawned based on the level
UFOMaxCount = 15 + (5*global.Level);

if (global.Level > 1)
{
	// Only spawns enemy ship after level 1
	DroneMaxCount = 4 + (3*global.Level);
}
if (global.Level > 2)
{
	// Only spawns drones after level 2
	ShipMaxCount = 4 + (2*global.Level);
}



if (AsteroidMaxCount < 15)
{
	AsteroidMaxCount = 3 + global.Level;
}
else
{
	// Caps the number of asteroids
	AsteroidMaxCount = 15;
}

// Increases the room width by 50 per current level. Capped at level 20
if (room == rm_Game && global.Level <= 20)
{
	room_width = 3500 + (50*global.Level);
}
else if (room == rm_Game && global.Level > 20)
{
	room_width = 4500;
}

// Score calculations

// Calculates score during game
if (room == rm_Game || room == rm_Swarm)
{
	isScoreCalculate = true;
	// Calculates score obtained for each defeated enemy in the round
	TempScore = score + EnemyScore + OtherScore;
	
	// Player earns 500 points per human remaining after level
	HumanScore = (500 * HumanCount);
	// Calculates the previous level's score + score bonus for remaining humans
	LevelScore = score + HumanScore;
}

// Play score count animation until current score reaches the calculated temp score
if (score < TempScore)
{
	// In-game score calculation
	score += 5;
	EnemyScore -= 5;
	OtherScore -= 5;
	if (sign(EnemyScore) == -1)
	{
		// Prevents Enemyscore from going negative when OtherScore is being counted simultaneously
		EnemyScore = 0;
	}
	if (sign(OtherScore) == -1)
	{
		// Prevents Otherscore from going negative when EnemyScore is being counted simultaneously
		OtherScore = 0;
	}
}



if (room == rm_Intermission && score < LevelScore && !isSwarmIntermission)
{
	// Intermission score calculation
	score += 10;
	HumanScore -= 10;
	if (!audio_is_playing(sfx_ScoreCount))
	{
		audio_play_sound(sfx_ScoreCount,2,false);
	}
}
else if (room == rm_Intermission && (score >= LevelScore || isSwarmIntermission) && keyboard_check_pressed(vk_anykey))
{
	// Moves to next screen text by clicking any button after calculating score
	isScoreCalculate = false;
	alarm_set(0, IntermissionDuration);
}

// Store temp life to prevent excessive extra life at exactly 20,000 points
if (score % 20000 >= 19990) && (score & 20000 <= 19999)
{
	TempLife = lives + 1;
}
if (score % 20000 == 0 && score != 0 && lives < 5)
{
	// Transfering templife to number of lives
	lives = TempLife;
	
	
	//// Extra life every 20,000 score
	//lives++;
	// Increase score by 1 to prevent unlimited health when score%20,000 is exactly 0;
	isExtraLife = true;
	// Display a prompt to indicate extra life given for a short period of time
	alarm_set(1, ExtraLifePromptDuration);
}


// Indicates that the previous room was a swarm room
if (room == rm_Swarm)
{
	isSwarmIntermission = true;
}
else if (room == rm_Game)
{
	isSwarmIntermission = false;
}

// Caps the number of lives at 5
if (lives > 5)
{
	lives = 5;
}

if (room == rm_GameOver)
{
	// deactivates self when entering game over room
	instance_deactivate_object(self);
}

if (audio_is_playing(music_Raiders_of_the_dying_worlds))
{
	audio_stop_sound(music_Raiders_of_the_dying_worlds);
}
if (room == rm_Game)
{
	if (!audio_is_playing(music_Alien_AI_abduction))
	{
		audio_play_sound(music_Alien_AI_abduction, 5, true);
	}
}
else
{
	audio_stop_sound(music_Alien_AI_abduction);
}