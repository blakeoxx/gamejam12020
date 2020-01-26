if (stop == false) {
    //Figure out the direction towards the player
    directionTo = point_direction(x,y,obj_player.x,obj_player.y);
    
    //Get direction diff
    directionDiff = (directionTo - directionPrev) mod 360;
    
    //Figure out how fast to turn
    turningSpeed = 180/turningSpeed;
    
    if (noFollow == false) {
    
        if (directionDiff > 180) {
            directionDiff = directionDiff - 360;
        }
        
        if (directionDiff < -180) {
            directionDiff = directionDiff + 360;
        }
        
        direction += directionDiff/turningSpeed;
        
        /*if (abs(directionDiff) < 180) {
            direction += (directionToPrev - directionPrev)/turningSpeed;
        } else {
            direction += directionDiff/turningSpeed;
        }*/
        //Add positive or negative to direction based on the speed
        directionPrev = direction;
        directionToPrev = directionTo;
    }
    speed = mySpeed;
}
