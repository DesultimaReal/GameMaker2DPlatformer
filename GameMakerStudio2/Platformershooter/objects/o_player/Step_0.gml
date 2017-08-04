/// @description Insert description here
if(health_ <= 0){
	instance_destroy();
}

var hinput = keyboard_check(vk_right) - keyboard_check(vk_left);

if hinput != 0 {
	speed_[h] += hinput*acceleration_;
	speed_[h] = clamp(speed_[h], -max_speed_,max_speed_);
	var flipped = (mouse_x>x)*2 - 1;//Player facing
	image_speed = flipped *hinput*.6;
}else{
	speed_[h] = lerp(speed_[h],0,.3);//Deccelerate
	image_speed = 0;//Stop our images moving
	image_index = 0;//Make sure we are the first image
}

if !place_meeting(x,y+1,o_solid){//If there isnt a floor under us
	speed_[v] += gravity_;//
	image_speed = 0;
	image_index = 6;
}else{
	if keyboard_check_pressed(vk_up){
		speed_[v] = jump_height_; //We are jumping
		x_scale = image_xscale*.6;
		y_scale = image_yscale*1.2;
	}
}

Move(speed_);


//Check for landing after weve moved
if place_meeting(x,y+1,o_solid) && !place_meeting(x,yprevious+1,o_solid){
	x_scale = image_xscale * 1.4;
	y_scale = image_yscale * .8;

}

//Move back to normalscale
x_scale = lerp(x_scale, image_xscale, .2);
y_scale = lerp(y_scale, image_yscale, .2);