//scr_move_axis()
var dir = point_direction(0, 0, xaxis, yaxis);
var hspd = lengthdir_x(spd,dir);//Horizontal speed
var vspd = lengthdir_y(spd,dir);// Vertical speed
    if(hspd != 0){
        image_xscale = sign(hspd);
    }
scr_get_face(dir);
movement = MOVE;
phy_position_x += hspd//sign(targetx - x)*spd;
phy_position_y += vspd
