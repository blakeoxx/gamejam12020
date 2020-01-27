/// scr_spawnEnemies(amount, type, weight)
var amount = argument0;
var enemy = argument1;
var weight = argument2;

var top = -64;
var right = room_width + 64;
var bot = room_height + 64;
var left = -64;

for (var i = 0; i < amount; i++) {
    var loc = choose("T", "R", "B", "L");
    var createdEnemy = noone;
    switch (loc) {
        case ("T"): createdEnemy = instance_create(irandom(room_width), top, enemy); break;
        case ("R"): createdEnemy = instance_create(right, irandom(room_height), enemy); break;
        case ("B"): createdEnemy = instance_create(irandom(room_width), bot, enemy); break;
        case ("L"): createdEnemy = instance_create(left, irandom(room_height), enemy); break;
    }
    createdEnemy.weight = weight;
}
