/// scr_spawnEnemies(amount, type)
var amount = argument0;
var enemy = argument1;

var top = -64;
var right = room_width + 64;
var bot = room_height + 64;
var left = -64;

for (var i = 0; i < amount; i++) {
    var loc = choose("T", "R", "B", "L");
    switch (loc) {
        case ("T"): instance_create(irandom(room_width), top, enemy); break;
        case ("R"): instance_create(right, irandom(room_height), enemy); break;
        case ("B"): instance_create(irandom(room_width), bot, enemy); break;
        case ("L"): instance_create(left, irandom(room_height), enemy); break;
    }
}
