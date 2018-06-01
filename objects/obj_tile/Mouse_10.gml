
if(global.selectedChar != noone){
	if(global.selectedChar.dragging && ds_list_size(obj_grid_manager.path_list) > 0){	
		//If not in path list, add to path list
		if(p_index == -1 && cell_is_adjacent(id, ds_list_find_value(obj_grid_manager.path_list, ds_list_size(obj_grid_manager.path_list) -1))){
			with(obj_grid_manager){
				ds_list_add(path_list, other.id);
				path_add_point(char_path, other.x, other.y, global.selectedChar.walk_spd);
				other.p_index = node_count
				node_count ++
			}
		}
		
		//If in path list, remove most recent nodes until this node is most recent
		else {
			with(obj_grid_manager){
				node_count = other.p_index + 1;
				while(ds_list_size(path_list) > node_count){
					path_delete_point(char_path, path_get_number(char_path) -1)
					
					with(ds_list_find_value(path_list, ds_list_size(path_list) -1)){
						p_index = -1;
					}
					ds_list_delete(path_list, ds_list_size(path_list) -1);
					
				}		
			}
		}
	}
}