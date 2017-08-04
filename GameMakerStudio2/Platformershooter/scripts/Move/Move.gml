///@param speed
var speed_ = argument0;


if place_meeting(x+speed_[h],y,o_solid){
	while !place_meeting(x+sign(speed_[h]),y,o_solid){
		x+=sign(speed_[h]);
	}
	speed_[@ h] = 0;//Modify the original value in the array here, only works on array
}
x+=speed_[h];

if place_meeting(x,y+speed_[v],o_solid){
	while !place_meeting(x,y+sign(speed_[v]),o_solid){
		y+=sign(speed_[v]);
	}
	speed_[@ v] = 0;
}
y+=speed_[v];