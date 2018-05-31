///@description add_character
///@arg name
///@arg speed
///@arg vision

/*
name	- string			/the character's name
speed	- integer			/the amount of tiles the character can move with one action
vision	- integer			/the range of tiles the character can observe

skills	- ds_map			/map contains all skills the character has, indicated by strings
	"skill_one"	- integer	/value indicates the level of the skill
	"skill_two"	- integer
	etc.

*/

var stats = ds_map_create();

ds_map_add(stats, "name", argument0);
ds_map_add(stats, "speed", argument1);
ds_map_add(stats, "vision", argument2);
var skills = ds_map_create();
ds_map_add(stats, "skills", skills);

ds_map_add(obj_character_manager.characters, argument0, stats);
