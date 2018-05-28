
/*
	Tiles legend
	0 = grass
	1 = stone
*/
global.mapList = ds_list_create();
var row = ds_list_create();
ds_list_add(row,0,1,1,0,0);
ds_list_add(global.mapList,row);
var row = ds_list_create();
ds_list_add(row,1,0,0,0,0);
ds_list_add(global.mapList,row);
var row = ds_list_create();
ds_list_add(row,1,1,1,1,0);
ds_list_add(global.mapList,row);
var row = ds_list_create();
ds_list_add(row,0,0,0,0,1);
ds_list_add(global.mapList,row);
var row = ds_list_create();
ds_list_add(row,0,0,0,1,0);
ds_list_add(global.mapList,row);


/*
	Flora legend
	0 = nothing
	1 = small cactus
	2 = large cactus
*/
global.floraList = ds_list_create();
var row = ds_list_create();
ds_list_add(row,0,0,0,0,0);
ds_list_add(global.floraList,row);
var row = ds_list_create();
ds_list_add(row,0,0,0,2,0);
ds_list_add(global.floraList,row);
var row = ds_list_create();
ds_list_add(row,0,0,0,0,0);
ds_list_add(global.floraList,row);
var row = ds_list_create();
ds_list_add(row,0,1,0,0,0);
ds_list_add(global.floraList,row);
var row = ds_list_create();
ds_list_add(row,0,0,0,0,0);
ds_list_add(global.floraList,row);


/*
	Character placement legend
	0 = nothing
	1 = geologist
	2 = botanist
*/

global.characterList = ds_list_create();
var row = ds_list_create();
ds_list_add(row,0,0,0,0,0);
ds_list_add(global.characterList,row);
var row = ds_list_create();
ds_list_add(row,0,0,0,0,0);
ds_list_add(global.characterList,row);
var row = ds_list_create();
ds_list_add(row,0,0,0,0,0);
ds_list_add(global.characterList,row);
var row = ds_list_create();
ds_list_add(row,0,0,0,0,0);
ds_list_add(global.characterList,row);
var row = ds_list_create();
ds_list_add(row,0,0,0,0,1);
ds_list_add(global.characterList,row);