///scr_enemy_choose_next_state()
if (alarm[0] <= 0) {
    state = choose(scr_enemy_wander_state, scr_enemy_idle_state);
    alarm[0] = room_speed * irandom_range(2, 4); ///2,3,4 * room speed is our new timer
    if(state == scr_enemy_wander_state) {
        xaxis = random_range(-1, 1);
        yaxis = random_range(-1, 1);
    }
}
