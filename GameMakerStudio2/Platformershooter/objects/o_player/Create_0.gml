/// @description Insert description here
// You can write your code in this editor
speed_ = [0,0];
speed_push_ = [0,0];
max_speed_ = 6;
gravity_ = .7;
acceleration_ = 1;
friction_ = .3;
jump_height_ = -13;
health_ = 5;
//Map keys
keyboard_set_map(ord("D"), vk_right);
keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("S"), vk_down);
keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(vk_space, vk_up);

//Set alarm for bullet
bullet_cooldown_ = room_speed/6;
alarm[0] = bullet_cooldown_;


//scale vars
x_scale = image_xscale;
y_scale = image_yscale;

//Hide the solids layer
var solid_layer = layer_get_id("Solids");
layer_set_visible(solid_layer, debug_mode);