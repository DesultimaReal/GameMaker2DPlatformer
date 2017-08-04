var xaxis = argument[0]; 
var yaxis = argument[1]; 
var p = instance_create(x,y,obj_fireball);
p.creator = id;
with(p){
    //physics_apply_impulse(x, y, xaxis, yaxis);
    speed = 10;
    image_angle = 130;
}

