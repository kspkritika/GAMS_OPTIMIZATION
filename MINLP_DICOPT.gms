variable z;

positive variable x1, x2;

*binary variables y1, y2, y3;

equations obj, c1, c2,c3,c4,c5,c6,c7,c8;


obj..    z =e= 3 + x1*x1 + (x2)*(x2);

c1..     ((x1-2)* (x1-2)) - (x2) =l= 0;

c2..     x1 =g= 2;

c3..     x1 - x2 =l= 0;

c4..     x1 =g= 0;

c5..     x2 - 1 =g= 0;

c6..     x1 + x2 =g= 3;

c7..     x1 =l= 4;

c8..     x2 =l= 4;







model venks /all/;

*x1.l = 0;  x2.l = 0;

c1.m = 0; c2.m = 0; c3.m = 1; c4.m = 0; c5.m = 0; c6.m = 0;


option nlp = knitro;

solve venks minimizing z using nlp;
display c1.m, c2.m, c3.m, c4.m, c5.m, c6.m, c7.m, c8.m 
