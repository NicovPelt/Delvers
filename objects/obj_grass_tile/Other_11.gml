/// @description Identify the tile

// Inherit the parent event
event_inherited();

if(sprite_index == spr_hidden || sprite_index == spr_tile_unknown){
	sprite_index = spr_grass
}