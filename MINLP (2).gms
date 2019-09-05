variable z;

positive variable x1, x2;

binary variables y1, y2, y3;

equations obj, c1, c2, c3, c4;
*, c5, c6, c7, c8, c9;

*- 32;

obj..    z =e= z;

c1..     z =g= y1 + 1.5*y2 + 0.5*y3 + 8 + 32*y1 - 32 ;

c2..     y1 + y2 + y3 =g= 1;

c3..     x1 =l= 4;

c4..     x2 =l= 4;

*c5..     x1 - 2*y1 =g= 0;

*c6..     x1 - x2 - 4*(1-y1) =l= 0;

*c7..     x1 - (1-y1) =g= 0;

*c8..     x2 - y2 =g= 0;

*c9..     x1 + x2 =g= 3*y3;

*c10..    (x1-2)*(x1-2) - x2 =l= 0;


*x1.up = 4;       x2.up = 4;

*y1.l = 1;        y2.l = 1;     y3.1 = 1;



model course6800 /all/;


option minlp = dicopt;

option optcr = 0;

solve course6800 minimizing z using minlp;
