/// @description Start dragging

global.selectedChar = id;
dragging = true;
path_clear_points(obj_grid_manager.char_path);
path_add_point(obj_grid_manager.char_path, x, y, walk_spd);

var _start_tile = instance_nearest(x, y, obj_tile)
ds_list_add(obj_grid_manager.path_list, _start_tile);
_start_tile.p_index = obj_grid_manager.node_count;
obj_grid_manager.node_count ++;
