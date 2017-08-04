//Perform an action to attack/ai depending on the EnemyType
EnemyType = argument[0]; 
switch (EnemyType) {
    case "Wizard":
        if (alarm[2] <= 0) { //If it has been a half a second
            scr_fire_magic_orb(xaxis, yaxis); //Fire off a fireball
            alarm[2] = 1;
            sprite_index = spr_wizard_attack; //Go into Attack animation
        }
        break;
    case "Slime":
        break;
    case "ChinLin":
        break;
}
