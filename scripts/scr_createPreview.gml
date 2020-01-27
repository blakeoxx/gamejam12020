/// scr_createPreview(type, flesh?)
var type = argument0;
var flesh = argument1;

switch (type) {
    case ("shots"): 
        if (previewShots != noone) {
            instance_destroy(previewShots);
        }
        if (flesh) {
            previewShots = instance_create(130, 204, obj_shop_addon);
            previewShots.image_index = 1;
            previewShots.depth = -1010;
        } else {
            previewShots = instance_create(130, 204, obj_shop_addon);
            previewShots.image_index = 5;
            previewShots.depth = -1010;
        }
    break;
    case ("arms"): 
        if (previewArms != noone) {
            instance_destroy(previewArms);
        }
        if (flesh) {
            previewArms = instance_create(130, 204, obj_shop_addon);
            previewArms.image_index = 2;
            previewArms.depth = -1005;
        } else {
            previewArms = instance_create(130, 204, obj_shop_addon);
            previewArms.image_index = 6;
            previewArms.depth = -1005;
        }
    break;
    case ("taser"): 
        if (previewTaser != noone) {
            instance_destroy(previewTaser);
        }
        if (flesh) {
            previewTaser = instance_create(130, 204, obj_shop_addon);
            previewTaser.image_index = 3;
            previewTaser.depth = -1000;
        } else {
            previewTaser = instance_create(130, 204, obj_shop_addon);
            previewTaser.image_index = 7;
            previewTaser.depth = -1000;
        }
    break;
    case ("defense"): 
        if (previewDefense != noone) {
            instance_destroy(previewDefense);
        }
        if (flesh) {
            previewDefense = instance_create(130, 204, obj_shop_addon);
            previewDefense.image_index = 4;
            previewDefense.depth = -1001;
        } else {
            previewDefense = instance_create(130, 204, obj_shop_addon);
            previewDefense.image_index = 8;
            previewDefense.depth = -1005;
        }
    break;
}
