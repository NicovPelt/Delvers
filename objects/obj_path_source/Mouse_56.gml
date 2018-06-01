/// @description Stop dragging

if(dragging && path_get_number(obj_grid_manager.char_path) > 1){
	//Start running the global.path
	show_debug_message("Now running the path");
	my_path = path_add();
	path_assign(my_path, obj_grid_manager.char_path);
	path_start(my_path, walk_spd, path_action_stop, true);
}

var _i = 0; repeat(ds_list_size(obj_grid_manager.path_list)){
	with(ds_list_find_value(obj_grid_manager.path_list, _i)){
		p_index = -1;
	}
	_i++;
}
ds_list_empty(obj_grid_manager.path_list);
path_clear_points(obj_grid_manager.char_path);
dragging = false;