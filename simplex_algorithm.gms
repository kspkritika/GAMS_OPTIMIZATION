positive variables x1, x2;
variable z;

equations obj, c1, c2;


obj..   z =e= 2*x1 + 3*x2 ;

c1..     x1 + x2 =l= 4   ;

c2..     x1 + 2*x2 =l= 6  ;




model simplex /all/;

*model course6800 /obj, c1, c2, c3/;


solve simplex using lp maximizing z;