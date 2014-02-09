param MACHINES > 0;

param pos_x {1..MACHINES};
param pos_y {1..MACHINES};

var dist_x {1..MACHINES};
var dist_y {1..MACHINES};

var x;
var y;

minimize overall_distance: sum {m in 1..MACHINES} (dist_x[m] + dist_y[m]);

subject to distance_x_1 {m in 1..MACHINES}:
	dist_x[m] >= x - pos_x[m];

subject to distance_x_2 {m in 1..MACHINES}:
	dist_x[m] >= -x + pos_x[m];

subject to distance_y_1 {m in 1..MACHINES}:
	dist_y[m] >= y - pos_y[m];

subject to distance_y_2 {m in 1..MACHINES}:
	dist_y[m] >= -y + pos_y[m];


data;

param MACHINES := 4;

param pos_x := 1 3  2 0  3 -2  4 1;
param pos_y := 1 0  2 -3  3 1  4 4;


