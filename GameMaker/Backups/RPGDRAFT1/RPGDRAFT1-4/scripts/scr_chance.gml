//scr_chance(percent)
var percent = argument[0]; //Between 0 and 1
percent = clamp(percent, 0, 1); //Values over 1 become 1 ect
return (random(1) < percent); //If we hit the percent we return true
