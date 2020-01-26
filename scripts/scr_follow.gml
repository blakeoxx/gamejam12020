if (stop == false) {
    //Figure out the direction towards the player
    directionTo = point_direction(x,y,obj_player.x,obj_player.y);
    //Get direction diff
    directionSpeed = directionTo - directionPrev;
    //Figure out how fast to turn
    turningSpeed = 180/turningSpeed;
    
    if (noFollow == false) {
        //Add positive or negative to direction based on the speed
        direction += directionSpeed/turningSpeed;
        directionPrev = direction;
    }
    speed = mySpeed;
}
