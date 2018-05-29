cx = camera_get_view_x(view_camera[0]);
cy = camera_get_view_y(view_camera[0]);

switch(mode){
	case cammode.follow_object:
		if(!instance_exists(following)) break;
		cx = following.x - (view_w/2);
		cy = following.y - (view_h/2);
	break;
	
	case cammode.follow_mouse_drag:
		
		var mx = display_mouse_get_x();
		var my = display_mouse_get_y();
		
		if(mouse_check_button(mb_left)){
			cx += (mouse_xprevious-mx) * drag_spd_factor;
			cy += (mouse_yprevious-my) * drag_spd_factor;
		}
		
		mouse_xprevious = mx;
		mouse_yprevious = my;
		
	break;
	
	case cammode.follow_mouse_border:
		if(!point_in_rectangle(mouse_x, mouse_y, cx+(view_w*border_percent), cy+(view_h*border_percent), cx+(view_w*(1-border_percent)), cy+(view_h*(1-border_percent)))){
			cx = lerp(cx, mouse_x-(view_w/2), border_spd);
			cy = lerp(cy, mouse_y-(view_h/2), border_spd);
		}
	break;
	
	case cammode.follow_mouse_peek:
		cx = lerp(following.x, mouse_x, peek_ratio)-(view_w/2);
		cy = lerp(following.y, mouse_y, peek_ratio)-(view_h/2);
	break;
	
	case cammode.move_to_target:
		cx = lerp(cx, target_x - (view_w/2), target_spd);
		cy = lerp(cy, target_y - (view_h/2), target_spd);
	break;
	
	case cammode.move_to_follow_object:
		if(!instance_exists(following)) break;
		cx = lerp(cx, following.x - (view_w/2), target_spd);
		cy = lerp(cy, following.y - (view_h/2), target_spd);
		
		if(point_distance(cx, cy, following.x - (view_w/2), following.y - (view_h/2)) < 1){
			mode = cammode.follow_object;
		}
	break;
}

if(!boundless){
	cx = clamp(cx, 0, room_width-view_w);
	cy = clamp(cy, 0, room_height-view_h);
}

camera_set_view_pos(view_camera[0], cx, cy);