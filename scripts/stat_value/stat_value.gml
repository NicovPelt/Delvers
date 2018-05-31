///@description skill_value
///@arg character
///@arg skill

//Returns the character's skill level

if(!ds_map_exists(obj_character_manager.characters, argument0)) return -1;

var character = ds_map_find_value(obj_character_manager.characters, argument0)

if(ds_map_exists(character, argument1)){
	return ds_map_find_value(character, argument1);	
} else {
	return -1;
}
