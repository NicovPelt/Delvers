///@description grid_pos_to_real
///@arg axis
///@arg grid_pos

if(!instance_exists(obj_grid)){
	show_debug_message("There is no grid.");
	exit;	
}

if(argument0 == "x"){
	var _factor = TILE_WIDTH;
	var _offset = obj_grid.x - GRID_XOFF;
} else { 
	var _factor = TILE_HEIGHT;
	var _offset = obj_grid.y - GRID_YOFF;
}

return ((argument1 + 0.5) * _factor) + _offset; 