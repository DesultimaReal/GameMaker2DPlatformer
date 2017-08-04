///scr_check_for_player()
if(instance_exists(obj_player)){
    var dis = point_distance(x,y,obj_player.x,obj_player.y);
    if(dis < sight) {
        state = scr_enemy_chase_state;
        var dir = point_direction(x, y, obj_player.x, obj_player.y);
        xaxis = lengthdir_x(1, dir);
        yaxis = lengthdir_y(1, dir);
        if(COMPLEXAI){
            if (alarm[2] <= 0) {
            scr_fire_fireball(xaxis, yaxis);
            alarm[2] = 30;
            }
        }
    }
    else{
        scr_enemy_choose_next_state();
    }
} else {
    scr_enemy_choose_next_state();
}
