variable z;

positive variable x1, x2;

*binary variables y1, y2, y3;

equations obj, c1, c2,c3,c4,c5,c6 ;


obj..    z =e= 3 + x1*x1 + (x2)*(x2);

c1..     ((x1-2)* (x1-2)) - (x2) =l= 0;

c2..     x1 =g= 2;

c3..     x1 - x2 =l= 0;

c4..     x1 + x2 =g= 3;

c5..     x1 =l= 4;

c6..     x2 =l=4;




model venks /all/;

*x1.l = 0;  x2.l = 0;


option nlp = knitro;

solve venks minimizing z using nlp;