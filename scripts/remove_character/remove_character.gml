///@description remove_character
///@arg character

//Remove old character information
ds_map_destroy(ds_map_find_value(obj_character_manager.characters, argument0));
ds_map_delete(obj_character_manager.characters, argument0);
