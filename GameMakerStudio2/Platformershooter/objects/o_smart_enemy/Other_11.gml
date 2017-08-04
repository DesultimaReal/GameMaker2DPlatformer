/// @description Attack State
if instance_exists(o_player){
	if distance_to_object(o_player) >= 48{
		STATE_ = MOVEMENT_;
		//show_debug_message("GOING FROM ATTACK TO MOVE STATE");
	}
	//Create Bullet
	if(alarm[0] <= 0){
		var dir = point_direction(x, y, o_player.x, o_player.y-o_player.sprite_height/2);//Dir of gun
		var x_offset = lengthdir_x(20, dir);
		var y_offset = lengthdir_y(20, dir);
		
		var bullet = instance_create_layer(x+x_offset,y+y_offset,"Instances", o_enemy_bullet);
		bullet.direction = dir;
		alarm[0]=bullet_cooldown_;
	}
}