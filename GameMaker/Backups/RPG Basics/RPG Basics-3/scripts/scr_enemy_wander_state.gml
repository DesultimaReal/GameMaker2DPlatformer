///scr_enemy_wander_state
scr_check_for_player();
if(point_distance(x, y, targetx, targety) > spd){
    var dir = point_direction(x, y, targetx, targety);
    var hspd = lengthdir_x(spd,dir);//Horizontal speed
    var vspd = lengthdir_y(spd,dir);// Vertical speed
    if(hspd != 0){
        image_xscale = sign(hspd);
    }
    phy_position_x += hspd//sign(targetx - x)*spd;
    phy_position_y += vspd
}
