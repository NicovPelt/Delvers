///@description rename_character
///@arg character
///@arg new_name

if(!ds_map_exists(obj_character_manager.characters, argument0)) exit;

//Identify source and target destination
var new_char = ds_map_create();
var source = ds_map_find_value(obj_character_manager.characters, argument0);

//Copy content from source to target, add target to characters with new name
ds_map_copy(new_char, source);
ds_map_add_map(obj_character_manager.characters, argument1, new_char);
ds_map_set(ds_map_find_value(obj_character_manager.characters, argument1), "name", argument1);

//Remove old character information
ds_map_destroy(source);
ds_map_delete(obj_character_manager.characters, argument0)
