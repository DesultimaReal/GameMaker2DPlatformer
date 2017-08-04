//Perform an action to attack/ai depending on the EnemyType
EnemyType = argument[0]; 
switch (EnemyType) {
    case "Wizard":
        if (alarm[2] <= 0) { //If it has been a half a second
            scr_fire_magic_orb(xaxis, yaxis); //Fire off a fireball
            alarm[2] = 30;
            sprite_index = spr_wizard_attack; //Go into Attack animation
        }
        break;
    case "Slime":
        break;
    case "ChinLin":
        break;
    case "ShittyTurret":
        break;
    case "Dragon":
        if (alarm[2] <= 0) { //If its been a second
            alarm[2] = 9 / image_speed; //9 images / .1 images per frame = x frame alarm
            //9 images at 3 images per second = 3 seconds
            sprite_index = spr_ChimeraAttack; //Go into Attack animation
            spd = 0;
        }
        break;
    case "Retreater":
        if (alarm[2] <= 0) { //If it has been a half a second
            alarm[2] = 30; //Fire another ninjastar alarm
            scr_fire_ninja_star(-xaxis, -yaxis); //Fire off a ninja star
            //sprite_index = spr_wizard_attack; //Go into Attack animation
        }
        break;
    break;
        
}
