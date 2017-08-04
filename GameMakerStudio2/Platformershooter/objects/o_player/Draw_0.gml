/// @description Insert description here
// You can write your code in this editor

var dir = point_direction(x, y-sprite_height/2, mouse_x, mouse_y);//Dir of gun
var flipped = (mouse_x>x)*2 - 1;//Player facing
//Draw dude
draw_sprite_ext(s_player, image_index,x,ceil(y),x_scale*flipped,y_scale,0,image_blend,image_alpha);
//Draw gun
draw_sprite_ext(s_gun, 0,x-4*flipped,y-sprite_height/2,1,flipped,dir,image_blend,image_alpha);