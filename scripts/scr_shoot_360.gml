///scr_shoot_360(x,y,direction,speed,amount,color)
whole = 360/argument4;
part = whole;
repeat(argument4)
    {
    with(instance_create(argument0,argument1,obj_enemy_bullet))
        {
        direction = argument2+other.part;
        speed = argument3;
        image_blend = argument5;
        }
    part += whole;
    }
