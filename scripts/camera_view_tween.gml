///camera_view_tween()
// Put this at the end of the player's step event, and make the room's view not track the player
view_xview[0] += ((x-(view_wview[0]/2)) - view_xview[0]) * 0.05;
view_yview[0] += ((y-(view_hview[0]/2)) - view_yview[0]) * 0.05;
