///@description modify_skill
///@arg character
///@arg skill
///@arg value
///@arg relative?
if(ds_map_exists(obj_character_manager.characters, argument0)){
	var character = ds_map_find_value(obj_character_manager.characters, argument0)
	var skills = ds_map_find_value(character, "skills");
} else exit;

if(argument3){ //Adjustment is relative
	if(!ds_map_exists(skills, argument1)) ds_map_set(skills, argument1, 0);
	ds_map_set(skills, argument1, ds_map_find_value(skills, argument1) + argument2);
	
} else { //Adjustment is absolute
	ds_map_set(skills, argument1, argument2);
}