/// @description HIT STATE

//PUSH FORCE
Move(speed_push_);
speed_push_[h] = lerp(speed_push_[h], 0, .1);
speed_push_[v] = lerp(speed_push_[v], 0, .1);

if point_distance(0,0,speed_push_[h],speed_push_[v]) < 1{
	//show_debug_message("HITTHENMOVE");
	STATE_ = MOVEMENT_;
}