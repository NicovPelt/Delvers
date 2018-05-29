//The camera has several modes in which it can operate
//Switch modes using change_camera_mode()


enum cammode {
	follow_object,
	follow_mouse_drag,
	follow_mouse_border,
	follow_mouse_peek,
	move_to_target,
	move_to_follow_object,
}

mode = cammode.follow_mouse_drag;
following = obj_walker;
boundless = false;

border_percent = 0.05;
border_spd = 0.05;
peek_ratio = 0.2;
target_spd = 0.1;
drag_spd_factor = 0.5;

target_x = 200;
target_y = 200;

view_w = camera_get_view_width(view_camera[0]);
view_h = camera_get_view_height(view_camera[0]);

mouse_xprevious = -1;
mouse_yprevious = -1;