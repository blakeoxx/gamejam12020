if (stop == false) {
    directionTo = point_direction(x,y,obj_player.x,obj_player.y);
    directionSpeed = directionTo - directionPrev;
    turningSpeed = 180/turningSpeed;
    if (noFollow == false) {
        direction += directionSpeed/turningSpeed;
        directionPrev = direction;
    }
    speed = mySpeed;
}
