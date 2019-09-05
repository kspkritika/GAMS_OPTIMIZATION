variable z;

positive variable x1, x2, y1, y2, w1, w2, w3, w4;

*binary variables y1, y2;

equations obj, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30; ;


obj..    z =e= x1 - x2 - y1 - w1 + w2 + w3 - w4 ;

c1..     x1 + 4*x2 =l= 8;

c2..     4*x1 + x2 =l= 12;

c3..     3*x1 + 4*x2 =l= 12;

c4..     2*y1 + y2 =l= 8;

c5..     y1 + 2*y2 =l= 8;

c6..     y1 + y2 =l= 5;

c7..     x1 =l= 10;

c8..     x2 =l= 10;

c9..     y1 =l= 10;

c10..    y2 =l= 10;

c11..    w1 =e= x1*y1;

c12..    w2 =e= x1*y2;

c13..    w3 =e= x2*y1;

c14..    w4 =e= x2*y2;

c15..    w1 =l= 12;

c16..    w2 =l= 12;

c17..    w3 =l= 8;

c18..    w4 =l= 8;

c19..    w1 =g= 3*y1 + 4*x1 -12;

c20..    w1 =l= 4*x1;

c21..    w1 =l= 3*y1;

c22..    w2 =g= 3*y2 + 4*x1 -12;

c23..    w2 =l= 4*x1;

c24..    w2 =l= 3*y2;

c25..    w3 =g= 2*y1 + 4*x2 - 8;

c26..    w3 =l= 4*x2;

c27..    w3 =l= 2*y1;

c28..    w4 =g= 2*y2 + 4*x2 - 8;

c29..    w4 =l= 4*x2;

c30..    w4 =l= 2*y2;


model course6800 /all/;


option minlp = couenne;

option optcr = 0;

solve course6800 minimizing z using minlp;
