/// player_move_state()
get_user_input();

if (attack_key) {
    image_index = 0;
    state = player_attack_state;
    alarm[0] = room_speed/6;  // Tweak this value
}

// Get direction
dir = point_direction(0,0, xaxis,yaxis);

// get length
if (xaxis == 0 && yaxis == 0) {
    len = 0;
} else {
    len = spd;
    get_object_facing();
}

// Set the speed
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

// Do the movement
move(hspd, vspd);

// Control the sprite
image_speed = 0.2;
if (len == 0) image_index = 0;


switch(face) {
    case RIGHT:
        sprite_index = spr_player_right;
        break;
    case UP:
        sprite_index = spr_player_up;
        break;
    case LEFT:
        sprite_index = spr_player_left;
        break;
    case DOWN:
        sprite_index = spr_player_down;
        break;
}

depth = -y;

camera_view_tween();
