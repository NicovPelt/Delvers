///@description cutscene_end_action

//End every other cutscene script by running this script


scene++;
if(scene > array_length_1d(scene_info)-1){
	instance_destroy();
	exit;
}


event_perform(ev_other, ev_user0);