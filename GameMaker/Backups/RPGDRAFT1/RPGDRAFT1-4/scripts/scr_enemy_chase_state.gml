///scr_enemy_chase_state
///Move towards the player
scr_check_for_player();
var dir = point_direction(x, y, targetx, targety);
var hspd = lengthdir_x(spd,dir);
var vspd = lengthdir_y(spd,dir);
if (hspd != 0) {
    image_xscale = sign(hspd);// Makes the slime turn to chase
}
phy_position_x += hspd//sign(targetx - x)*spd;
phy_position_y += vspd
