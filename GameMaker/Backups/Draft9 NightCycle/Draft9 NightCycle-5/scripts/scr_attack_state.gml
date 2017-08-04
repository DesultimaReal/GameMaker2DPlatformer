///scr attack_state

image_speed = .5;
movement = ATTACK;
switch (face) {
    
    case DOWN:
        sprite_index = spr_player_attack_down;
        break;
    case UP:
        sprite_index = spr_player_attack_up;
        break;
    case RIGHT:
        sprite_index = spr_player_attack_right;
        break;
    case LEFT:
        sprite_index = spr_player_attack_left;
        break;
}

if(image_index >= 3 and attacked == false) {
    varxx = 0;
    varyy = 0;
    switch (sprite_index) { // Where we create the damage obj in relation to our player
        case spr_player_attack_down:
            xx = x;
            yy = y + 12;
            break;
        case spr_player_attack_up:
            xx = x;
            yy = y - 10;
            break;
        case spr_player_attack_right:
            xx = x + 10;
            yy = y + 2;
            break;
        case spr_player_attack_left:
            xx = x - 10;
            yy = y + 2;
            break;
    }
    audio_play_sound(snd_sword_attack, 8, false);
    var damage = instance_create(xx, yy, obj_damage);
    damage.creator = id;
    damage.damage = object_player_stats.attack;
    attacked = true;
}
