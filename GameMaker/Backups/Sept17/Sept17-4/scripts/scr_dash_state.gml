
movement = MOVE;
///scr_dashstate
if(len == 0){ //If we arent moving
    dir = face * 90; //Always dash the way we are facing
}
//Otherwise we dash how we are moving

len = spd * 4;



//get hspd and vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

//Move 
phy_position_x += hspd;
phy_position_y += vspd;

// Create the dash effect where we are
var dash = instance_create(x, y, obj_dash_effect); 
dash.sprite_index = sprite_index;
dash.image_index = image_index;
///^returns the id of the obj created then stored

