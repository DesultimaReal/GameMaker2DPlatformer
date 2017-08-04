///draw_shadow_offset

var offset = argument0;

//Draw the shadow and obj
draw_sprite_ext(sprite_index, 0, x-offset, y+offset, 1, 1, image_angle, c_black, .4);
draw_self();
