///@description real_to_grid_pos
///@arg axis
///@arg real

var _real = argument1;
if(argument0 == "x"){
	var divider = TILE_WIDTH;
	var _offset = GRID_XOFF;
} else {
	var divider = TILE_HEIGHT;
	var _offset = GRID_YOFF;
}

var grid_pos = (_real - _offset) div divider;

return grid_pos;