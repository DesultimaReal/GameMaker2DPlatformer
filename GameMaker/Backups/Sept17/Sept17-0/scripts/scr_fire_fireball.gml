var xaxis = argument[0]; 
var yaxis = argument[1]; 
var p = instance_create(x,y,obj_fireball);
p.creator = id;
with(p){
    physics_apply_impulse(x, y, xaxis * .5, yaxis * .5);
    speed = 10;
    show_debug_message(string(speed));
    image_angle = 130;
    show_debug_message(string(image_angle));
}

