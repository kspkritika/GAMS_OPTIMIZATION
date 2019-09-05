variable z, xa, xb1, xbb, xb2, xb3, xc1, xc2, xc;
* x1 is ton of A, x2 is ton of B, x3 is ton of C
binary variable y1, y2, y3;
* {0,1} variable for process 1, 2, 3 in hours respectively
xa.lo = 0; xb1.lo = 0; xbb.lo = 0; xb2.lo = 0; xb3.lo = 0; xc1.lo = 0;
xc2.lo = 0; xc.lo = 0;

equations obj, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11;
*, c11;

obj..   z =e= 18*(xc) - 3*xc - 2.5*xa - 4*xb2 - 5.5*xb3 - 5*xa - 9.5*xbb;
* - 10*y1 - 15*y2 - 20*y3;

c1..     xb1  =e= 0.9*xa ;

c2..     xc1 =e= 0.82*(xb2 + xbb) ;

c3..     xc2 =e= 0.95*(xb3 + xbb) ;

c4..     xa=l= 16*y1;

c5..     y2 + y3 =l=1;

c6..     xc1 + xc2 =l= 15;

c7..     xb1 + xbb =e= xb2 + xb3;

c8..     xc1 =l= 15*y2;

c9..     xc2 =l= 15*y3;

c10..    xc1 + xc2  =e= xc;

c11..    xc1 + xc2 =g= 10;


model prob3_hw3 /all/;

option optcr = 0;

solve prob3_hw3 using mip maximizing z;
