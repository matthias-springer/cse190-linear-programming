set POINTS;

param PX {POINTS};
param PY {POINTS};

var a ;
var b;
var c;
var delta;

var abs_dist {POINTS};
var max_distance;

minimize distance: max_distance;


subject to have_line:
   a + b >= 5;

subject to dist1 {p in POINTS}:
   abs_dist[p] >= a * PX[p] + b * PY[p] - c;

subject to dist2 {p in POINTS}:
   abs_dist[p] >= -a * PX[p] - b * PY[p] + c;

subject to mdist {p in POINTS}:
   max_distance >= abs_dist[p];

data;

set POINTS := P1, P2, P3, P4, P5, P6, P7;

param: PX PY :=
P1     1  3
P2     2  5
P3     3  7
P4     5  11
P5     7  14
P6     8  15
P7     10 19;



