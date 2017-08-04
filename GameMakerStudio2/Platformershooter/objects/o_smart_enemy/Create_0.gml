/// @description Init Enemy
speed_ = [0, 0];
speed_push_ = [0, 0];
max_speed_ = 1;
health_ = 3;

//States
MOVEMENT_ = 0;
ATTACK_ = 1;
HIT_ = 2;
STATE_ = MOVEMENT_;

//Set alarm for bullet
bullet_cooldown_ = room_speed/3;
alarm[0] = bullet_cooldown_;