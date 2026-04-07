/// @description global variables
// You can write your code in this editor


// Gets a random seedw
randomise();

// Sets number of lives;
lives = 3;
score = 0;

// Sets the game's level
global.Level = 1;
// Sets the player's power upand bomb count 
// A global variable to retain powerup and bomb count when player dies
global.Powerup = 0;
global.BombCount = 2;



// Sets count numbers of all entities
HumanCount = 0;
HumanScore = 0;
LevelScore = 0;
EnemyScore = 0;
OtherScore = 0;

UFOMaxCount = 0;
ShipMaxCount = 0;
DroneMaxCount = 0;
AsteroidMaxCount = 0;

// Sets the amount of time to show the next level screen.
IntermissionDuration = 100;
ExtraLifePromptDuration = 50;

// Boolean for swarm intermission prompt
isSwarmIntermission = false;