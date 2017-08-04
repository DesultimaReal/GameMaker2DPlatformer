xaxis = argument[0];
yaxis = argument[1];
breaker = 0;
///Retreat

MoveToX = (phy_position_x - xaxis);
MoveToY = (phy_position_y - yaxis);

while(phy_position_x != MoveToX or phy_position_y != MoveToY){
    breaker ++;
    if(phy_position_x < MoveToX){
        phy_position_x += 1;
    }
    else{
        phy_position_x -= 1;
    }
    if(phy_position_y < MoveToX){
        phy_position_y += 1;
    }
    else{
        phy_position_y -= 1;
    }
    if(breaker > 100){
        break;
    }
}

//Select a walkable point 200 away
//Move there then attack


