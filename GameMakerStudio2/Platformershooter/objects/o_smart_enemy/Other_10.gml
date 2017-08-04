/// @description Movement State
if(instance_exists(o_player)){
	//MOVE FORCE
	var dir = point_direction(x, y, o_player.x, o_player.y);
	speed_[h] = lengthdir_x(max_speed_, dir);
	speed_[v] = lengthdir_y(max_speed_, dir);
	Move(speed_);//Call move with our speed which is where we are going

	//PUSH FORCE
	Move(speed_push_);//Call move of speed_push for collision
	if !place_meeting(x,y,o_smart_enemy){//Shrink the speed_push gradually when not colliding
		speed_push_[h] = lerp(speed_push_[h], 0, .1);speed_push_[v] = lerp(speed_push_[v], 0, .1);
	}

	//Death
	if health_ <= 0 {
		instance_destroy();
	}

	if distance_to_object(o_player) < 48{
		STATE_ = ATTACK_;
	}
}