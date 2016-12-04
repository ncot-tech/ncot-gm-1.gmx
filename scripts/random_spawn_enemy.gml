/// random_spawn_enemy(enemy_x, enemy_y, player_x, player_y)
var ex = argument[0];
var ey = argument[1];
var px = argument[2];
var py = argument[3];
var odds = 20;

if (point_distance(ex, ey, px, py) > 80 && irandom(odds) == odds) {
    instance_create(ex, ey, obj_enemy);
}
