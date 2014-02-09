
var flowSA >= 0, <= 6;
var flowSC >= 0, <= 10;
var flowSB >= 0, <= 1;
var flowAD >= 0, <= 4;
var flowAE >= 0, <= 1;
var flowBE >= 0, <= 20;
var flowAB >= 0, <= 2;
var flowCB >= 0, <= 2;
var flowCF >= 0, <= 5;
var flowDE >= 0, <= 2;
var flowEF >= 0, <= 6;
var flowDG >= 0, <= 5;
var flowEG >= 0, <= 10;
var flowFT >= 0, <= 4;
var flowGT >= 0, <= 12;

maximize flow:
	flowGT + flowFT;

subject to nodeA:
	flowSA = flowAB + flowAD + flowAE;

subject to nodeB:
	flowAB + flowSB + flowCB = flowBE;

subject to nodeC:
	flowSC = flowCB + flowCF;

subject to nodeD:
	flowAD = flowDG + flowDE;

subject to nodeE:
	flowBE + flowAE + flowDE = flowEG + flowEF;

subject to nodeF:
	flowCF + flowEF = flowFT;

subject to nodeG:
	flowDG + flowEG = flowGT;


