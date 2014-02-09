
var workers1 >= 0;
var workers2 >= 0;
var workers3 >= 0;
var workers4 >= 0;

var employ1 >= 0;
var employ2 >= 0;

var q1produce >= 0;
var q2produce >= 0;
var q3produce >= 0;
var q4produce >= 0;

var inventory1 >= 0;
var inventory2 >= 0;
var inventory3 >= 0;
var inventory4 >= 0;

minimize cost: 500 * workers1 + 500 * workers2 + 500 * workers3 + 500 * workers4 + 50 * inventory1 + 50 * inventory2 + 50 * inventory3 + 50 * inventory4;

subject to workers1:
	workers1 = employ1;

subject to workers2:
	workers2 = employ1 + employ2;

subject to workers3:
	workers3 = employ1 + employ2;

subject to workers4:
	workers4 = employ2;

subject to inventory1:
	inventory1 = q1produce - 600;

subject to inventory2:
	inventory2 = inventory1 + q2produce - 300;

subject to inventory3:
	inventory3 = inventory2 + q3produce - 800;

subject to inventory4:
	inventory4 = inventory3 + q4produce - 100;

subject to inventory4empty:
	inventory4 = 0;

subject to q1produce:
	q1produce <= 50 * workers1;

subject to q2produce:
	q2produce <= 50 * workers2;

subject to q3produce:
	q3produce <= 50 * workers3;

subject to q4produce:
	q4produce <= 50 * workers4;


