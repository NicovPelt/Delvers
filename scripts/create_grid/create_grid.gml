///@description create_grid
///@arg x
///@arg y
///@arg width
///@arg height


if(!layer_exists("Grid"))
	layer_create(99, "Grid");

var gx = argument0 + GRID_XOFF;
var gy = argument1 + GRID_YOFF;
var _w = argument2;
var _h = argument3;

var _grid = instance_create_layer(gx, gy, "Grid", obj_grid);


var row = 0; repeat(_h){
	var col = 0; repeat(_w){
		var _tile = instance_create_layer((col*TILE_WIDTH)+gx, (row*TILE_HEIGHT)+gy, "Grid", obj_tile);
		_tile.x_pos = col;
		_tile.y_pos = row;
		ds_list_add(_grid.tiles, _tile);
		
		col ++;
	}
	row ++;
}

return _grid;
