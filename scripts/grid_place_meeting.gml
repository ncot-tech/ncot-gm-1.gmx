/// grid_place_meeting(x,y)
var xx = argument[0];
var yy = argument[1];

var xp = x;
var yp = y;

x = xx;
y = yy;

var x_meeting = (level.grid[# bbox_right div CELL_WIDTH, bbox_top div CELL_HEIGHT] != FLOOR) ||
                (level.grid[# bbox_left div CELL_WIDTH, bbox_top div CELL_HEIGHT] != FLOOR);
                
var y_meeting = (level.grid[# bbox_right div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != FLOOR) ||
                (level.grid[# bbox_left div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != FLOOR);

var center_meeting = (level.grid[# xx div CELL_WIDTH, yy div CELL_HEIGHT] != FLOOR);                
x = xp;
y = yp;

return x_meeting || y_meeting || center_meeting;
