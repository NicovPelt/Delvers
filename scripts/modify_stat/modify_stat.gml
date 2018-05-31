///@description modify_skill
///@arg character
///@arg stat
///@arg value
///@arg relative?
if(ds_map_exists(obj_character_manager.characters, argument0)){
	var character = ds_map_find_value(obj_character_manager.characters, argument0)
} else exit;

if(argument3){ //Adjustment is relative
	if(!ds_map_exists(character, argument1)) ds_map_set(character, argument1, 0);
	ds_map_set(character, argument1, ds_map_find_value(character, argument1) + argument2);
	
} else { //Adjustment is absolute
	ds_map_set(character, argument1, argument2);
}