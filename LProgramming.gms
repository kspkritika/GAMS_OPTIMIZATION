positive variables y1, y2, y3, y4, y5, y6, y7, y8, y9, s1, s2, s3, s4, s5, s6, s7;
variable z;

equations obj, c1, c2,  c3, c4, c5, c6, c7, c8;

obj..   z =e= -y1 - 2*y2 - y3 ;
*obj..   z =e= -y1 - 2*y2 + y3 ;

c1..     y5 - y4 + y7 - y6 - (y9 - y8) + s1 =e= 10   ;

c2..     y5 - y4 - 3*(y7 - y6) + 2*(y9 - y8) =e= 12  ;

c3..     y5 - y4 -y1 + s2 =e= 0 ;

c4..     -(y5 - y4) -y1 + s3 =e= 0;

c5..     y7 - y6 -y2 + s4 =e= 0 ;

c6..     -(y7 - y6) -y2 + s5 =e= 0 ;

c7..     y9 - y8 -y3 + s6 =e= 0 ;

c8..     -(y9 - y8) -y3 + s7 =e= y3 ;




model absolute /all/;

*model course6800 /obj, c1, c2, c3/;


solve absolute using lp maximize z;
