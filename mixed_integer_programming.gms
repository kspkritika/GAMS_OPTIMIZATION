positive variables y1, y2, y3, y4, y5, y6, y7, y8, s1, s2, s3, s4, s5, s6, s7;
variable z;
binary variable y;
*y7.lo = 0;
*y8.lo = 0;

equations obj, c1, c2,  c3, c4, c5, c6, c7, c8;

*obj..   z =e= y1  2*y4 - (y7 + y8) ;
obj..   z =e= -y1 - 2*y4 + (y7 + y8) ;
*obj..   z =e= -y1 - 2*y2 - y3 ;

c1..     y2- y3+ y5- y6 - (y7 - y8) + s1 =e= 10   ;

c2..     y2 - y3 - 3*(y5 - y6) + 2*(y7 - y8) =e= 12  ;

c3..     y2 - y3 + s2 - y1 =e= 0 ;

c4..     -y1 + s3 -y2 + y3 =e= 0;

c5..     y5 - y6 + s4 -y4 =e= 0;

c6..     -y4 + s5 - y5 + y6 =e= 0;

c7..     y7 + s6 =e= 1*y ;

c8..     y8 + s7 =e= -100*(1-y);

model prob7_hw3 /all/;

solve prob7_hw3 using mip maximize z;

