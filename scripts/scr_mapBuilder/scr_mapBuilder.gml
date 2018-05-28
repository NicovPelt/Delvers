//coordinate indicators
var i;
var j;

var row;			//a list of the row of tiles in a given column
var flora;			//a list of the row of flora in a given column
var characters		//a list of the row of the character spawnpoint indicators

var tile;			//the object type of the tile to be placed
var plant;			//the object type of the plant to be placed, if any
var spawn;			//the spawnpoint of a character
var tileObject;		//the instance of the tile placed

//numbers used to position the tiles
var widthPos = 512;
var heightPos = 64;
var depthPos = 90;
var tileSpriteWidth = sprite_get_width(spr_hidden)/2;
var tileSpriteHeight = sprite_get_height(spr_hidden)/2;

show_debug_message(string(tileSpriteWidth));

var depthIncrease = 10;

//global.mapGrid = ds_grid_create(ds_list_size(global.mapList))

for(i = 0; i < ds_list_size(global.mapList); i++){
	row = ds_list_find_value(global.mapList,i);
	flora = ds_list_find_value(global.floraList,i);
	characters = ds_list_find_value(global.characterList,i);
	for(j = 0; j < ds_list_size(row); j++){
		
		switch(ds_list_find_value(row,j)){
			case 0:
				tile = obj_grass_tile;
				break;
			case 1:
				tile = obj_stone_tile;
				break;
		}
		tileObject = instance_create_depth(widthPos+tileSpriteWidth*j,heightPos+tileSpriteHeight*j,depthPos-10*j,tile);
		
		switch(ds_list_find_value(flora,j)){
			case 0:
				plant = noone;
				break;
			case 1:
				plant = obj_small_cactus;
				break;
			case 2:
				plant = obj_large_cactus;
				break;
		}
		tileObject.flora = plant;
		
		switch(ds_list_find_value(characters,j)){
			case 0:
				spawn = noone;
				break;
			case 1:
				spawn = obj_geologist;
				break;
		}
		if(spawn != noone)
			instance_create_depth(widthPos+tileSpriteWidth*j,heightPos+tileSpriteHeight*j,depthPos-depthIncrease*j-1,spawn);
	}
	widthPos -= 64;
	heightPos += 32;
	depthPos -= depthIncrease;
	
}