variable z;

positive variable x1, x2;

binary variables y1, y2, y3;

equations obj, c1, c2, c3, c4, c5, c6, c7 ;


obj..    z =e= y1 + 1.5*y2 + 0.5*y3 + 8 + 4*(x1 - 2) + 4*(x2 - 2) ;

c1..     -2 - (x2 - 2) =l= 0;

c2..     x1 - 2*y1 =g= 0;

c3..     x1 - x2 - 4*(1-y1) =l= 0;

c4..     x1 - (1-y1) =g= 0;

c5..     x2 - y2 =g= 0;

c6..     x1 + x2 =g= 3*y3;

c7..     y1 + y2 + y3 =g= 1;

*c8.. -z =l= -y1 -y2 -5 + 4*(2-x1) + 2*(1-x2);

x1.up = 4;       x2.up = 4;

y1.l = 1;        y2.l = 1;


model course6800 /all/;


option minlp = bonmin;

option optcr = 0;

solve course6800 minimizing z using minlp;
