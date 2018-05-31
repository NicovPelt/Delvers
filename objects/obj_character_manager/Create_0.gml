//The character manager keeps track of all available explorers, levels them, etc

characters = ds_map_create();

//Create a test character
test_name = "Charles Darwin";
test_name2 = "Lewis";
display_name = test_name;

create_character(test_name, 3, 5);
modify_skill(test_name, "Biology", 2, false);
