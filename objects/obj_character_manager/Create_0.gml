//The character manager keeps track of all available explorers, levels them, etc

characters = ds_map_create();

create_character("Charles Darwin", 3, 5);
modify_skill("Charles Darwin", "Biology", 2, false);

test_map = ds_map_create();
ds_map_add(test_map, "one", 1);

map_ref = test_map;
ds_map_add(map_ref, "two", 2);

