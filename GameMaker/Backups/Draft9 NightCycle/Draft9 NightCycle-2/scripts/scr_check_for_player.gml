///scr_check_for_player()
if(instance_exists(obj_player)){ //Makes sure the player exsists
    var dis = point_distance(x,y,obj_player.x,obj_player.y); //Finds the distance between self and player
    if(dis < sight) {// If too close
        state = scr_enemy_chase_state; //Chase the player
        var dir = point_direction(x, y, obj_player.x, obj_player.y);
        if(EnemyType == "Retreater"){
            
            var dir = point_direction(obj_player.x, obj_player.y, x, y);
        }
        xaxis = lengthdir_x(1, dir);
        yaxis = lengthdir_y(1, dir);
        if(dis < attackrange){
            EnemyAttackActivate(EnemyType);
        }
    }
    else{
        scr_enemy_choose_next_state(); 
        //sprite_index = spr_wizrd_idle;
    }
} else {
    scr_enemy_choose_next_state();
}
