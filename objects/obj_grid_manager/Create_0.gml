global.selectedChar = noone;
char_path = path_add();
path_set_closed(char_path, false);

path_list = ds_list_create();
node_count = 0;

grid = create_grid(0, 0, 10, 10);