positive variables y1, y2;
variable w;

equations obj, c1, c2;


obj..   w =e= 4*y1 + 6*y2 ;

c1..     y1 + y2 =g= 2   ;

c2..     y1 + 2*y2 =g= 3  ;




model dual /all/;

*model course6800 /obj, c1, c2, c3/;


solve dual using lp minmizing w;