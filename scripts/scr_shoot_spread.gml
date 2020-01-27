///scr_shoot_spread(x,y,direction,speed,amount,spacing,color)
spacing = 0;

with(instance_create(argument0,argument1,obj_enemy_bullet))
    {
    direction = argument2;
    speed = argument3;
    image_blend = argument6;
    }
repeat(argument4)
    {
    spacing += argument5;
    with(instance_create(argument0,argument1,obj_enemy_bullet))
        {
        direction = argument2+other.spacing;
        speed = argument3;
        image_blend = argument6;
        }
    with(instance_create(argument0,argument1,obj_enemy_bullet))
        {
        direction = argument2-other.spacing;
        speed = argument3;
        image_blend = argument6;
        }
    }
