var xaxis = argument[0]; 
var yaxis = argument[1]; 
var p = instance_create(x,y,obj_magic_orb);
p.creator = id;
with(p){
    physics_apply_impulse(x, y, xaxis * .5, yaxis * .5);
}

